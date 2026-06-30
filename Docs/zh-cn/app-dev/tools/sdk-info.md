# CJMP SDK 目录结构介绍

[**CJMP SDK**](https://gitcode.com/CJMP/SDK) 是面向全平台开发的一体化工具集，集成了应用开发所需的基础库、工具链和运行时文件。开发者可根据所使用的操作系统获取对应平台（macOS/Windows）的 SDK，目录结构如下：

## Windows 平台 SDK

``` bash
cjmp-sdk-windows-<version>-release/
├── cjmp-ui/                            # cj-ui各平台库文件
│   └── android/
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
│   ├── plugins/                        # CJMP和cangjie插件
│   └── third_party/
│       ├── cangjie-android/
│       ├── cangjie-stdx/
│       └── Cangjie.h
├── cjmp-test/                          # UI测试框架
│   └── android/
├── ui-engine/
│    ├── android/
│    │   ├── keels_android_adapter.jar   # CJMP引擎适配 Android 的jar包
│    │   └── arm64-v8a/
│    │       └── libkeels_android.so     # CJMP引擎适配 Android 的so包
│    └── ohos/
│        └── libkeels_ohos.so           # CJMP引擎适配 OpenHarmony 的so包
└── vibe-coding/                          # VibeCoding IDE 相关内容
    ├── AGENTS.md                         # 项目级 AI 上下文入口
    ├── README.md                         # VibeCoding 使用说明
    ├── mcp/
    │   └── mcp.json                      # MCP 配置模板
    └── skills/                           # skills 文件资源
        ├── cangjie-docs-navigator/
        └── cjmp-env-setup/
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
│   └── ios-sim/
│       ├── ohos/
│       └── macro/
│           └── ohos/
├── cjmp-libs/                          # 逻辑跨平台各平台库文件
│   ├── android/
│   ├── ios/
│   ├── ios-sim-arm64/
│   ├── ios-sim-x86_64/
│   └── ohos/
├── cjmp-tools/                         # 各工具可执行文件
│   ├── bin/
│   │   └── keels                       # 命令行工具的可执行文件
│   ├── tools/                          # 命令行源码
│   ├── plugins/                        # CJMP和cangjie插件
│   └── third_party/
│       ├── cangjie-ios/
│       ├── cangjie-android/
│       ├── cangjie-stdx/
│       └── Cangjie.h
├── cjmp-test/                          # UI测试框架
│   ├── android/
│   ├── ios/
│   └── ios-sim/
├── ui-engine/
│    ├── android/
│    │   ├── keels_android_adapter.jar   # CJMP引擎适配 Android 的jar包
│    │   └── arm64-v8a/
│    │        └── libkeels_android.so    # CJMP引擎适配 Android 的so包
│    ├── ios/
│    │   └── libkeels_ios.framework
│    ├── ios-sim/
│    │   └── libkeels_ios.framework
│    └── ohos/
│        └── libkeels_ohos.so           # CJMP引擎适配 OpenHarmony 的so包
└── vibe-coding/                          # VibeCoding IDE 相关内容
    ├── AGENTS.md                         # 项目级 AI 上下文入口
    ├── README.md                         # VibeCoding 使用说明
    ├── mcp/
    │   └── mcp.json                      # MCP 配置模板
    └── skills/                           # skills 文件资源
        ├── cangjie-docs-navigator/
        └── cjmp-env-setup/
```

**注意：** 解压后建议将 `cjmp-sdk-<version>/cjmp-tools/bin` 目录加入系统PATH变量，具体配置参考[开发准备](../quick-start/start-overview.md)文档。
