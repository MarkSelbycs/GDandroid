# 架构与协议分析

## 总体架构（三层）
1. **Java 容器层**（app-java/）：MainActivity 用 WebView 加载本地 H5，
   通过 `addJavascriptInterface(PortalMananger, "PortalMananger")` 暴露 35 个 JS 桥方法。
2. **H5 业务层**（h5-uniapp/）：uni-app(Vue2+webpack) 打包产物，明文存于 assets/static/，
   负责全部界面与交互（首页/工具箱/我的/网络检测/登录页等 20 个页面）。
3. **Native 层**（native/）：
   - `libdaproxy.so` —— 拨号代理核心（DaMod 类桥接：load/enc/dec/key/aid/inspect/prev，
     拨号协议算法在 so 内，Java 只见句柄）
   - `libmsec.so` —— 自研安全 SDK（com.msec.X3 共 70+ 个 native 方法：加解密/设备指纹/环境检测）
   - `libjiagu*.so` —— 360 壳（已移除）

## 认证流程（宽带账号登录）
JS `onAuth` → PortalMananger.m2 → n2(configInfo, 账号, 密码, 验证码)
→ PortalSdkManager.onAuth(...) → HTTP/XML（CdcProtocol）+ libdaproxy 拨号
→ 成功后 HoldService/HoldVpnService 保活（前台/VPN 双模式，多进程 .hold/.holdvpn）

关键配置键（ConfigKey，按学校动态下发）：auth-url / query-url / keep-url / term-url / state-url / ticket-url
代码内硬编码检测服务器：http://121.8.177.212:7001/ 、http://14.146.227.141:7001/detect.html
CdcProtocol 内有硬编码盐 "Eshore!@#"（XML config 签名用）——如需自建服务端要注意。

## JS 桥 35 个方法（G2 分发）
showModal showPopup showToast InitMananger onAskPermission onIntentAskVpnPage
onAskSSIDPermission onHandleCheckNetRegular onRetry onExitVisitor onMoveTaskToBack
onAuth onTerm onQueryPermission onCheckNetGoon onCheckNet hideLoading onExitApplication
showCheckBoxModal showLoading hideModal onIntentVpnPage vpnservice moduleClick permission
InfoUpdateLastDate location vetifyPopup loginFailPopup historyPopup clipboard battery vpn
location_service href(v2104新增)

## 版本差异 v2098→v2104（真实改动）
- PortalMananger：新增 "href" JS桥方法（打开内置 WebView 页）；线程池 10→50
- CdcProtocol / NetUtil / NetInfo：协议与网络信息类有实质修改（升级检测相关）
- ThreadPoolManager / NotifyManager / TrafficStatsManager / HoldKeepService：小改
- H5 层：index.js、location/permission/privacySet 页面重编译（微调）

## 脱壳技术记录（可复用）
1. 360加固：classes.dex 仅 4 个壳类（StubApp/DtcLoader/Configuration/a）
2. MuMu(Android15,x86_64) + frida-server 17.23.3 + frida-dexdump，两轮 dump 交叉验证
3. dump 出的 dex 需修复 header checksum(adler32) + signature(sha1) 才能被 jadx 接受
4. 壳会做"方法抽取"：MainActivity.onRequestPermissionsResult 方法体被抽走
   （dex 中显示 native，实际由壳 interface22 回填）——smali 中已手工还原为委托 PortalMananger
5. 重建 APK 时 AndroidManifest 的 application name 从 com.stub.StubApp 改回
   com.cndatacom.campus.CampusApplication，并注入 StubApp 透传 shim
6. apktool 回编译必须配 doNotCompress: [arsc,...]，否则 Android 10+ 拒绝安装
