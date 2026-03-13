# 应用工程结构介绍

## CJMP 应用工程模版类型说明

CJMP 支持创建 app、module、logic-module 类型的工程，根据开发目标选择合适的工程类型。

- app 工程是标准的CJMP应用，包含完整的 Cangjie UI 层和原生平台层，用于开发全新的独立 App。
- module 工程专为混合开发设计，可将 CJMP 实现的组件或者页面嵌入到已有的原生项目中，作为项目的一部分运行。
- logic-module 工程用于封装可复用的功能，产出为依赖包，可在其他工程中共享和复用。创建 logic-module 工程时有 CJMP 和 native 两种选择：
  - CJMP 工程：logic-module 对外提供 Cangjie 接口；壳工程提供 Cangjie UI，调用logic-module接口进行验证。
  - native 工程：logic-module 对外提供原生接口；壳工程提供原生 UI ，调用logic-module接口进行验证。

## CJMP 应用工程目录结构说明

以 CJMP 创建的 demo 工程为例，各种类型的工程模版目录结构如下：

### app 工程

``` bash
demo/
├── android/                                # Android 应用
├── ios/                                    # iOS 应用
├── lib/                                    # UI层源码
|    ├── ability_mainability_entry.cj       # 主能力的扩展入口
|    ├── ability_stage.cj                   # 应用生命周期阶段控制
|    ├── cjpm.toml                          # 主项目依赖配置
|    ├── index.cj                           # 应用总入口文件
|    ├── main_ability.cj                    # 主业务核心功能逻辑入口
|    ├── module_entry_entry.cj              # 模块化子功能注册入口
|    └── ...
├── hos/                                    # HarmonyOS 应用
└── ...
```

### module 工程

``` bash
demo/
├── android/                                                # Android 应用
|    ├── app/
|    |    ├── src/
|    |    |    ├── androidTest/
|    |    |    ├── main/
|    |    |    |    ├── java/com/example/testdemo/
|    |    |    |    |    ├── EntryCustomActivity.java
|    |    |    |    |    ├── MainActivity.java              # Android Activity 入口文件
|    |    |    |    |    └── MyApplication.java
|    |    |    |    ├── res/                                # 资源文件
|    |    |    |    └── AndroidManifest.xml
|    |    |    └── test/
|    |    └── ...
|    ├── demo/
|    ├── gradle/
|    └── ...
├── ios/                                                    # iOS 应用
|    ├── keels/
|    ├── demo/
|    ├── testdemo/
|    |    ├── main.m                                        # iOS 应用入口
|    |    ├── Assets.xcassets/                              # 资源文件
|    |    └── ...
|    ├── testdemo.xcodeproj/
|    └── ...
├── lib/                                                    # CJMP 页面源码
|    ├── ability_mainability_entry.cj                       # 主能力的扩展入口
|    ├── ability_stage.cj                                   # 应用生命周期阶段控制
|    ├── build.sh                                           # 编译构建cangjie脚本
|    ├── cjpm.toml                                          # 主项目依赖配置
|    ├── index.cj                                           # 应用总入口文件
|    ├── main_ability.cj                                    # 主业务核心功能逻辑入口
|    ├── module_entry_entry.cj                              # 模块化子功能注册入口
|    └── ...
└── hos/                                                    # HarmonyOS 应用
|    ├── AppScope/
|    ├── demo/
|    ├── entry/
|    |    ├── src/
|    |    |    ├── main/
|    |    |    |    ├── ets/                                # ArkTs源码
|    |    |    |    |    ├── entryability/                  # HarmonyOS 应用的入口
|    |    |    |    |    ├── entrybackupability/
|    |    |    |    |    └── pages/                         # HarmonyOS 应用的页面
|    |    |    |    ├── resources/                          # 资源文件
|    |    |    |    └── module.json5
|    |    |    ├── mock/
|    |    |    ├── ohosTest/
|    |    |    ├── test/
|    |    |    └── ...
|    |    └── ...
|    ├── hvigor/
|    └── ...
└── ...
```

### logic-module CJMP 工程

``` bash
demo/
├── android/                                                # Android 应用
|    ├── app/
|    |    ├── src/
|    |    |    ├── androidTest/
|    |    |    ├── main/
|    |    |    |    ├── assets/
|    |    |    |    ├── java/com/example/testdemo/
|    |    |    |    |    ├── EntryEntryAbilityActivity.java # Android Activity 入口文件
|    |    |    |    |    └── MyApplication.java
|    |    |    |    ├── res/                                # 资源文件
|    |    |    |    └── AndroidManifest.xml
|    |    |    └── test/
|    |    └── ...
|    ├── demo/
|    ├── gradle/
|    └── ...
├── ios/                                                    # iOS 应用
|    ├── keels/
|    ├── demo/
|    ├── testdemo/
|    |    ├── main.m                                        # iOS 应用入口
|    |    ├── Assets.xcassets/                              # 资源文件
|    |    └── ...
|    ├── testdemo.xcodeproj/
|    ├── testdemo.xcworkspace/
|    └── ...
├── lib/                                                    # UI层源码
|    ├── ability_mainability_entry.cj                       # 主能力的扩展入口
|    ├── ability_stage.cj                                   # 应用生命周期阶段控制
|    ├── cjpm.toml                                          # 主项目依赖配置
|    ├── index.cj                                           # 应用总入口文件
|    ├── main_ability.cj                                    # 主业务核心功能逻辑入口
|    └── module_entry_entry.cj                              # 模块化子功能注册入口
├── hos/                                                    # HarmonyOS 应用
|    ├── AppScope/
|    ├── demo/
|    ├── entry/
|    |    ├── src/main
|    |    |    ├── cangie/
|    |    |    ├── resources/                               # 资源文件
|    |    |    └── module.json5
|    |    └── ...
|    ├── hvigor/
|    ├── oh_modules/
|    └── ...
├── logic-module/
|    ├── android/
|    ├── common/
|    |    └── demo.cj
|    ├── ios/
|    ├── hos/
|    └── ...
└── ...
```

### logic-module native 工程

``` bash
demo/
├── android/                                                # Android 应用
|    ├── app/
|    |    ├── src/
|    |    |    ├── androidTest/
|    |    |    ├── main/
|    |    |    |    ├── java/com/example/demo/
|    |    |    |    |    └── EntryEntryAbilityActivity.java # Android Activity 入口文件
|    |    |    |    ├── res/                                # 资源文件
|    |    |    |    └── AndroidManifest.xml
|    |    |    └── test/
|    |    └── ...
|    ├── demo/
|    ├── gradle/
|    └── ...
├── ios/                                                    # iOS 应用
|    ├── demo/
|    ├── testdemo/
|    |    ├── main.m                                        # iOS 应用入口
|    |    ├── Assets.xcassets/                              # 资源文件
|    |    └── ...
|    ├── testdemo.xcodeproj/
|    ├── testdemo.xcworkspace/
|    └── ...
├── hos/                                                    # HarmonyOS 应用
|    ├── AppScope/
|    ├── demo/
|    ├── entry/
|    |    ├── src/
|    |    |    ├── main/
|    |    |    |    ├── ets/                                # ArkTs源码
|    |    |    |    |    ├── entryability/                  # HarmonyOS 应用的入口
|    |    |    |    |    ├── entrybackupability/
|    |    |    |    |    └── pages/                         # HarmonyOS 应用的页面
|    |    |    |    ├── resources/                          # 资源文件
|    |    |    |    └── module.json5
|    |    |    ├── mock/
|    |    |    ├── ohosTest/
|    |    |    ├── test/
|    |    |    └── ...
|    |    └── ...
|    ├── hvigor/
|    └── ...
├── logic-module/                                           # logic-module 的源码文件
|    ├── android/
|    |    ├── cangjie/                                      # 仓颉桥阶层
|    |    ├── cpp/                                          # C++桥阶层
|    |    ├── java/                                         # Java桥阶层
|    ├── common/
|    |    └── demo.cj
|    ├── ios/
|    |    ├── cangjie/                                      # 仓颉桥阶层
|    |    ├── objective-c/                                  # Objective-C桥阶层
|    ├── hos/
|    |    ├── arkts/                                        # ArkTs桥阶层
|    |    ├── cangjie/                                      # 仓颉桥阶层
|    └── ...
└── ...
```