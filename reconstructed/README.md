# 广东校园 APP 逆向重建工程

- 包名: `com.cndatacom.campus.cdccportalgd`（广东电信天翼校园·校园宽带认证客户端）
- 版本: v2098 (4.0.2098.25080501) 和 v2104 (4.0.2104.25102201，线上最新版，从真机提取)
- 保护: **360加固(jiagu)** —— 原 classes.dex 只剩 4 个壳类，真实代码运行时解密
- 脱壳方式: MuMu 模拟器(Android 15/x86_64) + frida-dexdump 内存 dump → 修复 dex checksum → 重建 APK

## 验证结果（硬证据）
1. dump 出的应用 dex 完整：**4000 个类**，v2098/v2104 两轮 dump 交叉一致
2. 脱壳重签名 APK 在模拟器上**安装成功、正常启动、完整进入主界面**（隐私弹窗、网络检测、H5 页面渲染全部正常）
3. apktool 全工程可重新 build 回 APK（工程自洽）

## 目录结构
```
reconstructed/
├── app-java/          Java 业务源码（jadx 反编译，含 com/cndatacom 全部 134 个类 + com/msec 安全SDK）
│   └── src/com/stub/StubApp.java   ← 壳类替换实现（脱壳注入用，非原始代码）
├── full-decompile-v2104/  全量反编译（含 androidx/fastjson/okhttp 等依赖，方便对照）
├── third-party/       fastjson 等第三方库反编译（开源，不必维护）
├── smali/             v2104 脱壳版 smali（4000 类，字节码级真值，jadx 失败时以此为准）
├── dex/               修复 checksum 后的应用 dex（v2098/v2104 各一份）
├── resources/         AndroidManifest.xml + 全部 res（apktool 解码）
├── h5-uniapp/         ★ 业务前端：uni-app H5 层（assets/static，未加密明文）
│   ├── raw/           原始 JS/图片
│   └── beautified/    js-beautify 格式化后的 JS（25 个文件）
├── native/            libdaproxy.so(拨号核心) + libmsec.so(安全SDK)，arm64-v8a/armeabi-v7a
├── apk/               原版 + 脱壳重签名版 APK（可直接安装）
└── ANALYSIS.md        架构与协议分析报告
```

## 重新打包方法
```bash
java -jar apktool.jar b -f -o out.apk <工程目录>
java -jar uber-apk-signer.jar -a out.apk -o signed/   # 注意保留 doNotCompress: arsc
```

## 已知限制（诚实声明）
1. **R8 混淆**：业务类名/字段名是混淆的（a/b/t3/r0 等），smali 与 jadx 一致，属原始状态
2. **壳的方法抽取**：`MainActivity.onRequestPermissionsResult` 原方法体被壳抽走，已按 PortalMananger 同名逻辑还原为委托调用（smali 已改，Java 源码同步注释）
3. **com.msec / libmsec.so、libdaproxy.so** 是原生代码，目前只做了接口清单（见 ANALYSIS.md），如需反编译可用 Ghidra 导入 native/ 目录
4. H5 层无 sourcemap，只能拿到 webpack 压缩产物（已 beautify），不是 .vue 源码
