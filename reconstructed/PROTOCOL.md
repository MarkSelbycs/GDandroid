# 广东校园 CDC 校园宽带认证协议 —— 完整技术文档

> 目标：把 `com.cndatacom.campus.cdccportalgd`（广东电信天翼校园客户端）的认证/保活/退出协议
> 从 Java 到 native 层彻底还原，作为自研轻量客户端（CLI + 未来 APK）的实现规范。
> 证据来源：v2104 脱壳反编译（jadx+smali 交叉验证）、libdaproxy.so Ghidra 反编译、
> H5 层 JS 分析。所有结论标注了 文件:行号。

---

## 0. 一句话架构

WebView(uni-app H5) → `PortalMananger.coolNativeMethod` JS桥 → `PortalSdkManager` →
`CdcProtocol`(XML over HTTP, 全部明文 http://) → `CdcHttpClient`(repackaged OkHttp `c4.*`) →
请求体经 **DaMod**（libdaproxy.so 加载服务器下发的算法插件）编码。
保活由独立进程 `.hold`/`.holdvpn` 的前台服务驱动。

## 1. 端到端流程（登录→保活→退出）

```
[前置] 手机连上校园WiFi, DHCP拿到IP, 位置权限授予(读SSID用, 认证本身不用SSID)

1. detect   GET  http://14.146.227.141:7001/detect.html   (备用 http://www.189.cn)
            响应 HTML 中截取 <!--//config.campus.js.chinatelecom.com ... //config.campus.js.chinatelecom.com-->
            之间内嵌的 <config> XML → 得到全部业务 URL 和参数 (auth-url/ticket-url/...)
            ※ 若响应被重定向到别的页面 = 不在校园网 (返回码201/202)
2. damod    首次任何 POST 都会带 Algo-ID:00000000-... 和占位 body(36字节"00000000-...")
            服务器回 Error-Code:200 + 响应体 = ZSM 算法插件 blob
            客户端 DaMod.load(blob) → 之后所有 POST body = DaMod.Encode(xml)
3. ticket   POST ticket-url   <request>ua,clientid,time,host-name,ipv4,ipv6,mac,ostag,gwip</request>
            响应 <response><ticket/><expire/></response> → 会话票据
4. auth     POST auth-url     <request>ua,clientid,time,ticket,userid,passwd[,verify]</request>
            响应 <response> 全部键值写入私有配置 (含 schoolID/domain/area 等)
            ※ 密码明文进 XML；passwd 的"保护"只有整体 DaMod 编码
5. keep     POST keep-url     <request>ua,clientid,time,ticket,ipv4,ipv6,mac</request>
            响应 <response><interval/></response> → 刷新在线窗口
            周期 = interval 秒 (默认300), 在线判定 expire = now + interval*retry(默认3)
6. state    POST state-url    <request>ua,clientid,time,ticket</request>   (查询在线态)
7. query    POST query-url    <request>ua,clientid,time</request>          (查同账号在线设备列表→多端管理)
8. term     POST term-url     <request>ua,clientid,time,ticket,reason</request>
            reason: 1=手动退出 2=退出App 5=重登 6=被判定共享 8=踢其他设备 11=检测超时
```

### 错误码（响应头 `Error-Code` / `Sub-Error`，CdcErrCode.java）
| 码 | 含义 | 客户端行为 |
|---|---|---|
| 0 | 成功 | 解析响应XML |
| 200 | ALGO_EXPIRED（插件过期/未加载）| body=新插件 → setDaMod → 重发原请求（最多3次）|
| 100 | 账号密码错误 | 报错 |
| 10 | IP无效 / 11 MAC无效 / 12 clientid无效 | 报错 |
| 13 | Algo-ID无效 / 15 Checksum错误 | 报错 |
| 14 | ticket无效 | term 视为成功 |
| 103 | 在线终端数超限(TOOLMANY_CLIENT) | 报错→引导踢终端 |
| 300/301 | 等待客户端/服务器二次认证 | 继续轮询 |
| 11062000 | 需要短信验证码 | 弹验证码框 |
| 本地码 | 200113 编码失败 200114 解码失败 200115 解析失败 200117 保活超时 200119 检测到共享 300309 缺URL配置 | |

UI 错误码折叠规则：`"140" + Error-Code补零3位`（如 140102 = 认证被拒），Sub-Error 原样带上。

## 2. HTTP 细节（CdcHttpClient.java:256-285, smali 470-640）

- 全部 `http://` 明文，无 TLS。`Content-Type: text/plain; charset=utf-8`。
- 请求头（POST）：
  ```
  accept: text/html,text/xml,application/xhtml+xml,application/x-javascript,*/*
  Connection: close
  CDC-SchoolId: <schoolID>   CDC-Domain: <domain>   CDC-Area: <area>   (非空才发)
  Client-ID: <uuid>          User-Agent: CCTP/android11_64/2104        (VPN模式: CCTP/android64_vpn/2104)
  Algo-ID: <插件UUID 或 00000000-0000-0000-0000-000000000000>
  CDC-Checksum: hex(MD5(实际发送body))
  Content-Length: <n>
  ```
- 超时：常规 5s；auth 30s；detect GET 不自动重定向（手工跟随 Location/meta-refresh，最多5跳），
  且装 PriorityIPv4Dns。
- 每个 okhttp client 都挂了 `com.msec.cb` 拦截器（libmsec.so 驱动，行为未知，见 §7）。
- 响应头读取：`Error-Code`→cdcCode，`Sub-Error`→subCode；detect GET 还回读
  `schoolID/domain/area` 写入私有配置。
- **body 二选一**（smali CdcHttpClient 503-546 确认）：
  - DaMod 已加载且 ok → `Encode(xmlBytes)`，失败(空)直接 200113 不发；
  - 未加载/引导模式 → 发送 36 字节占位 `"00000000-0000-0000-0000-000000000000"`。
  - 即：**原始 XML 从不裸发**。没插件 = 无法完成任何业务请求。

## 3. XML 协议格式

请求（CdcProtocol.CdcRequest，无转义直接拼接）：
```xml
<?xml version="1.0" encoding="UTF-8"?><request>
  <user-agent>CCTP/android11_64/2104</user-agent>
  <client-id>xxxxxxxx-uuid</client-id>
  <local-time>yyyy-MM-dd HH:mm:ss</local-time>
  ...端点专属字段(见§1)...
</request>
```
响应：`<response><key>value</key>...</response>` → fastjson2 XML 转 JSON → 键值全量落私有配置。
`userid` 特殊：剥掉 `@domain` 后存 userId。`ticket` 端点额外要求 expire 字段。

detect 内嵌配置 `<config>` 已知键（ConfigKey.java + 读取点）：
```
auth-url ticket-url state-url query-url          (公共配置)
keep-url term-url                                 (⚠ 读取走私有配置——由 auth 响应下发, 不在 config 里)
schoolID domain area                              (学校标识, 也出现在响应头)
keep-interval keep-retry portal-state ticket expire netInfo OnlineTime
DetectIndexUrl DetectRedirectUrl DetectData        (detect 节点池)
account                                           (JSON: {modify:[{type:"del-domain",value:...}]})
FUN_<name>                                        (funcfg 子对象: SchoolInfoURL, QueryAuthCode,
   QueryVerificateCodeStatus, CheckNetRegularly{enable,periodTime,icmpUrl,icmpTimeout,maxCount},
   Vpn{enable}, UpdateCheck, SubErrorData, PostSSID, RouteCollectUploadURL, WiFiCollectUploadURL,
   ProcessesCollectUploadURL, SafetyDataCollectionURL, Collection, StatsInfer, NewSplashAndDialogAD,
   SystemIdentificationURL, Detect[{url,weight}...], excheck-args, check-args ...)
```
funcfg 型 URL 的值是 JSON `{enable:"1", url:"...", ipv6Url:"..."}`，enable≠1 视为不可用。

## 4. DaMod / ZSM 插件体系（native 层，Ghidra 完整还原）

`libdaproxy.so`（1.4MB，arm64/armv7，构建路径泄露：`bss-gdcampus-mobile/ZSMLinkerPro`）
**本身不含算法**，是一个"内存 ELF 加载器"。算法在服务器下发的插件 blob 里。

### 4.1 JNI 接口（DaMod.java ↔ libdaproxy）
| Java | native | 作用 |
|---|---|---|
| `Load/setData(byte[])` | `load` | 解密+加载插件 → 返回句柄(long) |
| `getId()` | `aid` | 插件 UUID（Algo-ID 头）|
| `getKey()` | `key` | 插件 key 串（当前 Java 无调用）|
| `getPrefix()` | `prev` | （无调用）|
| `Inspect(boolean)` | `inspect` | （无调用）|
| `Encode/Decode(byte[])` | `enc`/`dec` | 调插件函数指针 |
| `Free()` | `free` | ZsmUnLoad + 释放 |

### 4.2 插件容器格式（ZsmModDeCode @0x11ac20 反编译）
```
[3B tag][1B keylen][key bytes][1B aidlen][aid bytes][5B lzma_props][u32 size|type<<28][payload...]
```
- `size` 高 4 位 = 加密类型：
  - 0 = 字节链 XOR（`p[i]^=p[i+1]` 反向扫描）
  - 1 = **RC4**，96 字节主密钥硬编码在 .text（0x1354a0 起，已提取：
    `-pQTRTHL2sMnU2tLurB5K:o7plYTvcs~4#sSSxC1D9dDJSBNYgDA8v:I14GlhQlmaF98zSVZNq7WzP1:kA3#-#!he#pKXLY9`）
  - 2 = **XTEA 双密钥**（32轮, delta 0x9E3779B9, 负轮数=解密）：
    K1=`dXu2TBV4IcZcJ3r|` K2=`YChcokHYNgzXu5Bt`
  - 3 = **ZUC 祖冲之序列密码**（128bit key+128bit iv 硬编码）
  - 末字节 = 尾部填充长度，payload 去掉后再 **LZMA alone** 解压
- 解出的是 **ELF 全文件**，经私有 `sys_dlopen`（手改 linker，不落盘、不注册）载入内存，
  dlsym 取 `ZsmInit2`（回填 encode/decode/free/inspect 函数指针 + key/aid）和 `ZsmUnLoad`。

### 4.3 插件生命周期
- 任何 POST 收到 `Error-Code:200` → 响应体即新插件 → `ConfigInfo.setDaMod(blob)`
  （load 成功后原始 blob 存 `files/CDCLogs/config/damod`，冷启动 `getDaMod()` 回载）。
- 已登录过的手机（官方版）该文件已存在 → **root 后直接 cat 出来就是可用插件**：
  `/data/data/com.cndatacom.campus.cdccportalgd/files/CDCLogs/config/damod`
- `assets/udfs/bundle-9ef4ab97` 与 DaMod 无关（uni-app 云函数资源，Java/smali 零引用）。

### 4.4 自研客户端复用策略
**不需要重写算法**：把 `libdaproxy.so + DaMod.java + damod 插件文件` 三件套原样搬进新 APK，
JNI 调用即可 100% 协议兼容。PC 端调试可经 `frida-gum` 或写个最小 JNI wrapper 加载同 so。
（远期若要纯软件实现：dump 内存 ELF 插件 → Ghidra 逆向 encode 函数 → 移植。插件本身可能再套壳。）

## 5. 保活与进程模型（HoldService/HoldVpnService/HoldKeepService）

- 进程：主进程 + `.hold`（普通模式）+ `.holdvpn`（VPN模式，仅当服务器 Vpn.enable=1）。
- IPC = 受保护广播 `com.cndatacom.campus.receiver.action`（signature 权限），
  跨进程状态靠 AES-GCM 加密的共享配置文件（ConfigInfo/MultiProcessInfo 文件对拷）。
- 保活循环：`.hold` 用 WorkManager（5s 一次性 + 15min 周期兜底），实际间隔取 `keep-interval`；
  `.holdvpn` 用 AlarmManager.setExactAndAllowWhileIdle 自续。
- 掉线判定：`isOnline()` = ticket 非空 && expire>now（expire=now+interval*retry*1000）；
  过期后再 detect，若又见 portal 页 → 判定掉线(200117) → 主进程 `removeDetectUrl` + 重走
  ticket/auth 自动重连（`CheckRegularWorker` 主动 ping+HTTP 双探测，funcfg CheckNetRegularly 控制）。
- VPN 模式真相：`VpnService.Builder` 只 addAddress(本机IP/32)+MTU1400，**无路由无DNS**，
  读 TUN fd 但丢弃数据 —— 纯粹是"防杀保命"占坑，不代理流量。
- 主进程 60s watchdog 检查 `.hold`/`.holdvpn` 存活，被杀即拉起。

## 6. 多账号现状与自研设计

原版：单账号。`DialAccount/DialPassword` 单值存私有配置；登录成功才存密码；
"记住密码"复选框只控制 `isAutoLogin`；切号=term+重登。`query` 接口可列同账号在线终端，
`termOtherClient(ticket)` 可踢。

自研设计（满足"多账号、去共享检测、CLI"）：
```
accounts.json:  [{name, account, password, autoKeep, lastUsed}, ...]   // 密码可选 AES-GCM(仿原版) 或明文
当前会话:       ticket/expire/keep-url 等按账号分桶存储（原版是全局单桶）
命令:           dialer login <idx|account> [password]   # ticket+auth
                dialer status                           # state + isOnline
                dialer keep-start|keep-stop             # 前台保活
                dialer logout [idx]                     # term reason=1
                dialer list / add / del                 # 多账号管理
                dialer query                            # 在线终端列表; dialer kick <ticket> 踢端
```

## 7. 共享检测子系统（要移除的部分）与移除点

| 模块 | 行为 | 移除点（smali 行号 = PortalMananger.smali） |
|---|---|---|
| `zexcheck/v3` ExCheckManager | 从服务器拉同账号在线IP列表(geturl)，对每个 peer 做 UDP"hello"/TCP"conn"互探（自己开 TCP:20000+rand 服务应答），3DES 结果上报 uploadurl | :9047 `ExCheckManager->start` 删除 |
| `topology` TopologyManager | ARP 表(`/proc/net/arp`、`ip neighbour`)、UDP 广播探测、组播"CNS"协同、TTL 路由测绘、SNMP 查询，3DES 上报 neighbour.url/router.url | :9111 `TopologyManager->start` 删除 |
| `NetworkShareWorker` | `.hold` 进程每 60s 反射 `ConnectivityManager.getTetheredIfaces()`，命中→广播 code2→主进程 term(reason=6) 强制下线 | HoldExtraTaskManager.smali:42-44 调度删除 |
| 遥测上传 | uploadLog/uploadModuleLog/uploadSSIDData/uploadPhoneMarketingData/Collection/SafeCollection/TrafficStats/Capability/WiFiInfo/Routingdelay/InterfaceInfo Worker | i1() 内对应 invoke 删除（:8990-9031, 9053-9105） |
| `com.msec`/libmsec.so | okhttp 拦截器（native 动态注册，静态不可见），疑似请求签名/环境检测 | 保守：先保留（怕服务器校验其头）；激进：删 `z2.a.a()` 挂载后实测 |

注意：`i1()` 里 `startService`（保活）与上述同函数 —— 只删检测调用，保留 startService。
服务器侧的在线终端数限制（错误码103）**客户端删不掉**，用户已确认暂不绕过。

## 8. 加密材料汇总（全部硬编码，已提取）

| 用途 | 算法 | 材料 | 位置 |
|---|---|---|---|
| OTP authenticator | `UPPER(hex(MD5(schoolid+ts+"Eshore!@#")))` | 盐 `Eshore!@#` | CdcProtocol.java:44,236（H5 同款实现）|
| 本地配置存储 | AES/GCM，key=IV=MD5(Build.FINGERPRINT) | 设备指纹派生 | CryptoUtil.java:105-141 |
| telemetry 载荷 | AES-CBC(名 des3) key/iv | `9vApxLk5G3PAsJrM`/`FnJL7EDzjqWjcaY9` | KeepUserAgentWorker.java:40 等 6 处 |
| 同上(备用) | AES-CBC | `xfokM0h3GcRAqRZT `/`aLX32gHbG3fBxNpQ` | SafeCollectionManager.java:34 |
| des3EncodeECB | DESede/ECB | 24B XOR 混淆数组还原=`1dcrm4gaRY8WINsgV1LoLHLB` | CryptoUtil.java:31-90 |
| 日志加密 | RSA/ECB/PKCS1 512bit | 公钥 base64 见 CryptoUtil.java:99 | 仅日志 |
| ZSM 插件容器 | RC4/XTEA/ZUC 96B 主密钥 | §4.2 | libdaproxy .text 0x1354a0 |
| 请求完整性 | MD5(body)→CDC-Checksum | — | CdcHttpClient |

## 9. 认证前置条件清单（自研必须凑齐的输入）

| 字段 | 来源 | 自研获取方式 |
|---|---|---|
| ipv4/ipv6/mac/gateway | WiFi DHCP + `ip address show` | Android API / Linux 命令 |
| client-id | 随机 UUID 持久化 | 自行生成 |
| user-agent | `CCTP/android11_64/<versionCode>` | 固定字符串（versionCode 是否被校验未知→先抄 2104）|
| schoolID/domain/area | detect 响应头或 SchoolInfoURL | 自动 |
| ticket | ticket-url 响应 | 自动 |
| 验证码 | 仅当服务器要（11062000）| CLI 交互输入 |
| damod 插件 | 首次 Error-Code:200 响应 | 自动获取/从已登录手机提取 |
| SSID/BSSID | **不参与认证**，仅遥测 | 不需要 |

## 10. 未决问题（需要校园网实地抓包确认）

1. keep-url/term-url 的确切下发时机（静态看只从 auth/keep 响应进私有配置——首登后才有，
   意味着**退出必须登录后端保存过响应**；自研按账号分桶持久化即可）。
2. `com.msec.cb` 拦截器到底加了什么（动态 hook 或删掉实测）。
3. damod 插件 ELF 内部算法（拿到真插件后 Ghidra 一步到位）。
4. detect 服务器列表是否会被 `DetectData` 权重更新（是，DetectManager）。
5. UA 里 ServerIdentificationURL 下发的 clientTag 替换逻辑是否强制（KeepUserAgentWorker，
   3DES 解密后替换 UA 中段——先不实现，登录失败再补）。

## 11. 抓包/取证操作手册（连上校园网后）

```bash
# 手机(root)提取已登录的 damod 插件:
adb shell su -c "cat /data/data/com.cndatacom.campus.cdccportalgd/files/CDCLogs/config/damod" > damod.bin
# 提取加密配置(含 keep-url/ticket 等, 需同设备指纹解):
adb shell su -c "cat /data/data/.../files/CDCLogs/config/data" > cfg.bin
# 全流量(明文http):
adb shell su -c "tcpdump -i any -w /sdcard/x.pcap port 80 or port 7001"
# 或 frida attach 已脱壳版 + hook_raw.js
```
