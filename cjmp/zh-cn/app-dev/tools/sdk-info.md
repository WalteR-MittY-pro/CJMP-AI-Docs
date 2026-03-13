# CJMP SDK 目录结构介绍

[**CJMP SDK**](https://gitcode.com/CJMP/SDK) 是面向全平台开发的一体化工具集，提供开箱即用的开发能力。用户根据操作系统下载对应平台（Linux/macOS/Windows）的压缩包后，解压目录结构如下：

## Windows 平台 SDK

``` bash
cjmp-sdk-windows-<version>-release/
├── cjmp-ui/                            # cj-ui各平台库文件
│   ├── android/
│   │   ├── ohos/
│   │   └── macro/
│   │       └── ohos/
│   └── ohos/
│       ├── ohos/
│       └── macro/
│           └── ohos/
├── cjmp-libs/                          # 逻辑跨平台各平台库文件
│   ├── android/
│   └── ohos/
├── cjmp-tools/                         # 各工具可执行文件
│   ├── bin/
│   │   └── keels.bat                   # 命令行工具的可执行文件
│   ├── tools/                          # 命令行源码
│   ├── plugins/                        # CJMP和keels-cangjie插件
│   └── third_party/
│       ├── cangjie-ohos/
│       ├── cangjie-android/
│       ├── cangjie-stdx/
│       └── Cangjie.h
└── ui-engine/
    └── android/
        ├── keels_android_adapter.jar   # CJMP引擎适配 Android 的jar包
        └── arm64-v8a/
            └── libkeels_android.so     # CJMP引擎适配 Android 的so包

```

## macOS 平台 SDK

``` bash
cjmp-sdk-mac-arm64-<version>-release/
├── cjmp-ui/                            # cj-ui各平台库文件
│   ├── android/
│   │   ├── ohos/
│   │   └── macro/
│   │       └── ohos/
│   ├── ios/
│   │   ├── ohos/
│   │   └── macro/
│   │       └── ohos/
│   ├── ios-sim/
│   │   ├── ohos/
│   │   └── macro/
│   │       └── ohos/
│   └── ohos/
│       ├── ohos/
│       └── macro/
│           └── ohos/
├── cjmp-libs/                          # 逻辑跨平台各平台库文件
│   ├── android/
│   ├── ios/
│   └── ohos/
├── cjmp-tools/                         # 各工具可执行文件
│   ├── bin/
│   │   └── keels                       # 命令行工具的可执行文件
│   ├── tools/                          # 命令行源码
│   ├── plugins/                        # CJMP和keels-cangjie插件
│   └── third_party/
│       ├── cangjie-ohos/
│       ├── cangjie-ios/
│       ├── cangjie-android/
│       ├── cangjie-stdx/
│       └── Cangjie.h
└── ui-engine/
    ├── android/
    │   ├── keels_android_adapter.jar   # CJMP引擎适配 Android 的jar包
    │   └── arm64-v8a/
    │        └── libkeels_android.so    # CJMP引擎适配 Android 的so包
    ├── ios/
    │   └── libkeels_ios.framework
    └── ios-sim/
        └── libkeels_ios.framework
```

**注意：** 解压后建议将 `cjmp-sdk-<version>/cjmp-tools/bin` 目录加入系统PATH变量，具体配置参考[开发准备](../quick-start/start-overview.md)文档。
