# gdportal — 广东校园轻量拨号客户端（去壳重构）

从原版 APK 逆向重建的**最小实现**：登录 / 保活 / 退出 / 多账号，
**去掉了** WebView+H5、360壳、共享检测（zexcheck/topology/NetworkShareWorker）、
全部遥测上传、广告、更新检查、VPN 保命戏法。

## 目录

```
src/com/gdportal/core/        平台无关协议核心（纯 Java 8, 零依赖）
  CdcClient.java              detect/ticket/auth/keep/state/term/query/kick 全流程
  XmlBuilder/XmlLite/Json     协议编解码（对应原版 CdcRequest/parseXml）
  AccountStore.java           多账号 + 按账号分桶的会话持久化
  Codec.java + FileCodec/MockCodec   ZSM 插件接口（PC 侧）
src/com/gdportal/Main.java    CLI 入口（PC 调试用）
android-src/                  Android 层
  com/gdportal/android/DialService    前台服务: 登录+保活循环+掉线重连
  com/gdportal/android/CliActivity    三按钮/am start 触发（无界面设计）
  com/gdportal/android/DaModCodec     Codec→DaMod 适配
  com/cndatacom/campus/netcore/DaMod  原版反编译类（JNI 符号名绑定, 必须保留包名）
  AndroidManifest.xml         最小权限集
test/mock_cdc.py              模拟 CDC 服务器（端到端自测）
native/                       (需自行放入) libdaproxy.so 按 abi 分目录
../reconstructed/PROTOCOL.md  协议完整技术文档（实现规范）
```

## 已验证

- `javac` 全部通过（core 用 JDK，android-src 用 android-34 stub 编译）
- **端到端**：mock 服务器上 add→login→status→keep→clients→kick→logout→多账号 全链路 OK
  （插件下发 Error-Code:200→加载→重试、CDC-Checksum、Eshore 验证码签名、
  keep-url/term-url 从 auth 响应落到账号私有配置等原版行为全部复现）

## 真机使用（下一步）

1. **拿插件**（三选一）：
   - 已登录过的原版手机（root）：
     `adb pull /data/data/com.cndatacom.campus.cdccportalgd/files/CDCLogs/config/damod`
   - 或什么都不做——首次 auth 时服务器 Error-Code:200 会自动下发（代码已处理）；
   - 或从 `apk/base_v2104_DESHELLED_signed.apk` 装到手机登录一次提取。
2. **so 就位**：`cp reconstructed/native/lib/arm64-v8a/libdaproxy.so gdportal/native/arm64-v8a/`
3. **打包**：推荐 Android Studio 空工程导入（`src`+`android-src`→`app/src/main/java`，
   `AndroidManifest.xml` 覆盖，jniLibs 指 native/），或 `./build-apk.sh`（需 build-tools）。
4. **连接**：手机连校园 WiFi →
   `adb shell am start -n com.gdportal.dialer/com.gdportal.android.CliActivity --es action login --es name dorm --es account 你的账号 --es password 你的密码`
   保活：`--es action keepalive`；退出：`--es action logout`。

## PC CLI（调试/分析）

```bash
javac -d build $(find src -name "*.java")
java -cp build com.gdportal.Main add dorm <账号> <密码>
# 注: 真 portal 的 auth 需要原生 DaMod 编码, PC 上只能跑 detect/OTP 等明文接口;
#     完整拨号请用 Android 构建。协议级自测: python test/mock_cdc.py 8099 +
#     -Dgdportal.detect=http://127.0.0.1:8099/detect.html -Dgdportal.mock=1
```

## 设计要点（与原版差异）

| 原版 | 本实现 |
|---|---|
| 单账号（覆盖式） | 多账号，各自 ticket/expire/keep-url 分桶 |
| WebView+uni-app H5 UI | 无界面：Service+通知栏状态+am 命令 |
| 360加固 + libmsec 拦截器 | 无壳；msec 拦截器已去除（若服务器校验其签名头需回补，见 PROTOCOL.md §10） |
| zexcheck/topology/NetworkShareWorker 共享检测 | **全部移除**（服务器侧 103 超限仍可能出现，可用 clients/kick 管理） |
| 遥测上传 8 种 Worker + 广告 + 更新检查 | 全部移除 |
| VPN 假隧道防杀 | 标准 foregroundService(dataSync) + 电池优化白名单 |
| keep 循环在 .hold 进程 | 单进程线程循环（掉线自动 ticket+auth 重连） |

## 已知风险

1. `com.msec.cb` okhttp 拦截器被去掉——若 portal 校验它注入的头/字段，登录会收到明确错误码；
   届时把原版 so+最小适配层加回即可（结构上 Codec 接口旁边留了位置）。
2. UA 中 `ServerIdentificationURL` 下发的 clientTag（3DES）未实现——原版仅在登录后异步更新，
   不影响登录本身；若某校园强制校验再补。
3. 密码本地存储为 XOR+Base64 混淆（防肉眼不防 root），如需更强用 Android Keystore。
