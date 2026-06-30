# 应用工程结构介绍

## CJMP 应用工程模板类型说明

CJMP 提供 `app`、`module`、`logic-module` 三种工程模板，分别面向独立应用开发、混合开发接入和可复用逻辑封装等场景。

- `app` 工程：用于开发完整的 CJMP 应用，适合从 0 到 1 构建独立应用的场景。
- `module` 工程：用于在已有原生工程中嵌入 CJMP 页面或组件，适合混合开发场景。
- `logic-module` 工程：用于封装可复用的逻辑能力，适合作为独立模块供其他工程集成和调用。

创建 `logic-module` 工程时，还可以选择以下两种类型：

- `CJMP` 类型：适用于仅对外提供 Cangjie 接口的场景，配套生成以 Cangjie UI 实现的壳工程进行验证。
- `native` 类型：适用于需要对外提供 ArkTs、Java、Objective-C 原生接口的场景，配套生成以各端原生 UI 实现的壳工程进行验证。

## CJMP 应用工程目录结构说明

以 CJMP 创建的 demo 工程为例，各种类型的工程模板目录结构如下：

### app 工程

``` bash
demo/
├── AGENTS.md/                              # 项目级 AI 上下文入口
├── android/                                # Android 应用
├── hos/                                    # HarmonyOS 应用
├── ios/                                    # iOS 应用
├── lib/                                    # UI层源码
|    ├── ability_mainability_entry.cj       # 主能力的扩展入口
|    ├── ability_stage.cj                   # 应用生命周期阶段控制
|    ├── cjpm.toml                          # 主项目依赖配置
|    ├── index.cj                           # 应用总入口文件
|    ├── main_ability.cj                    # 主业务核心功能逻辑入口
|    ├── module_entry_entry.cj              # 模块化子功能注册入口
|    └── ...
├── project.conf                            # 工程的配置文件, 由工具自动生成
└── ...
```

### module 工程

``` bash
demo/
├── AGENTS.md/                                              # 项目级 AI 上下文入口
├── android/                                                # Android 应用
|    ├── app/
|    |    ├── src/
|    |    |    ├── androidTest/
|    |    |    ├── main/
|    |    |    |    ├── java/com/example/testdemo/
|    |    |    |    |    ├── EntryCustomActivity.java
|    |    |    |    |    ├── MainActivity.java              # Android Activity 入口文件
|    |    |    |    |    └── MainApplication.java
|    |    |    |    ├── res/                                # 资源文件
|    |    |    |    └── AndroidManifest.xml
|    |    |    └── test/
|    |    └── ...
|    ├── demo/                                              # module 对应的 Android library 工程源码
|    ├── gradle/                                            # Gradle Wrapper 及构建脚本配置
|    └── ...
├── hos/                                                    # HarmonyOS 应用
|    ├── AppScope/                                          # HarmonyOS 应用级配置及全局资源
|    ├── demo/                                              # module 对应的 HarmonyOS HAR 工程源码
|    ├── entry/                                             # HarmonyOS 壳工程入口模块
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
|    ├── hvigor/                                            # HarmonyOS 构建工具相关目录
|    └── ...
├── ios/                                                    # iOS 应用
|    ├── keels/                                             # Keels 引擎入口及系统资源
|    ├── demo/                                              # module 对应的 iOS framework 工程源码
|    ├── testdemo/                                          # iOS 壳工程源码，用于验证 module
|    |    ├── main.m                                        # iOS 应用入口
|    |    ├── Assets.xcassets/                              # 资源文件
|    |    └── ...
|    ├── testdemo.xcodeproj/                                # iOS 壳工程的 Xcode 工程文件
|    └── ...
├── lib/                                                    # CJMP 页面源码
|    ├── ability_mainability_entry.cj                       # 主能力的扩展入口
|    ├── ability_stage.cj                                   # 应用生命周期阶段控制
|    ├── cjpm.toml                                          # 主项目依赖配置
|    ├── index.cj                                           # 应用总入口文件
|    ├── main_ability.cj                                    # 主业务核心功能逻辑入口
|    ├── module_entry_entry.cj                              # 模块化子功能注册入口
|    └── ...
├── project.conf                                            # 工程的配置文件, 由工具自动生成
└── ...
```

### logic-module CJMP 工程

``` bash
demo/
├── AGENTS.md/                                              # 项目级 AI 上下文入口
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
|    ├── demo/                                              # logic-module 对应的 Android library 工程源码
|    ├── gradle/                                            # Gradle Wrapper 及构建脚本配置
|    └── ...
├── hos/                                                    # HarmonyOS 应用
|    ├── AppScope/                                          # HarmonyOS 应用级配置及全局资源
|    ├── demo/                                              # logic-module 对应的 HarmonyOS HAR 工程源码
|    ├── entry/                                             # HarmonyOS 壳工程入口模块
|    |    ├── src/main
|    |    |    ├── cangie/
|    |    |    ├── resources/                               # 资源文件
|    |    |    └── module.json5
|    |    └── ...
|    ├── hvigor/                                            # HarmonyOS 构建工具相关目录
|    └── ...
├── ios/                                                    # iOS 应用
|    ├── keels/                                             # Keels 引擎入口及系统资源
|    ├── demo/                                              # logic-module 对应的 iOS framework 工程源码
|    ├── testdemo/                                          # iOS 壳工程源码，用于验证 logic-module
|    |    ├── main.m                                        # iOS 应用入口
|    |    ├── Assets.xcassets/                              # 资源文件
|    |    └── ...
|    ├── testdemo.xcodeproj/                                # iOS 壳工程的 Xcode 工程文件
|    ├── testdemo.xcworkspace/                              # iOS 壳工程的 Xcode 工作区文件
|    └── ...
├── lib/                                                    # UI层源码
|    ├── ability_mainability_entry.cj                       # 主能力的扩展入口
|    ├── ability_stage.cj                                   # 应用生命周期阶段控制
|    ├── cjpm.toml                                          # 主项目依赖配置
|    ├── index.cj                                           # 应用总入口文件
|    ├── main_ability.cj                                    # 主业务核心功能逻辑入口
|    └── module_entry_entry.cj                              # 模块化子功能注册入口
├── logic-module/                                           # logic-module 的源码文件
|    ├── android/
|    ├── common/
|    |    └── demo.cj                                       # logic-module 的入口文件, 公共仓颉源代码
|    ├── ios/
|    └── ...
├── project.conf                                            # 工程的配置文件, 由工具自动生成
└── ...
```

### logic-module native 工程

``` bash
demo/
├── AGENTS.md/                                              # 项目级 AI 上下文入口
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
|    ├── demo/                                              # iOS 壳工程依赖的 Android library 工程源码
|    ├── gradle/                                            # Gradle Wrapper 及构建脚本配置
|    └── ...
├── hos/                                                    # HarmonyOS 应用
|    ├── AppScope/                                          # HarmonyOS 应用级配置及全局资源
|    ├── demo/                                              # iOS 壳工程依赖的 HarmonyOS HAR 工程源码
|    ├── entry/                                             # HarmonyOS 壳工程入口模块
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
|    ├── hvigor/                                            # HarmonyOS 构建工具相关目录
|    └── ...
├── ios/                                                    # iOS 应用
|    ├── demo/                                              # logic-module 对应的 iOS framework 工程源码
|    ├── testdemo/                                          # iOS 壳工程源码，用于验证 logic-module
|    |    ├── main.m                                        # iOS 应用入口
|    |    ├── Assets.xcassets/                              # 资源文件
|    |    └── ...
|    ├── testdemo.xcodeproj/                                # iOS 壳工程的 Xcode 工程文件
|    ├── testdemo.xcworkspace/                              # iOS 壳工程的 Xcode 工作区文件
|    └── ...
├── logic-module/                                           # logic-module 的源码文件
|    ├── android/
|    |    ├── cangjie/                                      # 仓颉桥接层
|    |    ├── cpp/                                          # C++桥接层
|    |    └── java/                                         # Java桥接层
|    ├── common/
|    |    └── demo.cj                                       # 公共仓颉源代码
|    ├── hos/
|    |    ├── arkts/                                        # ArkTs桥接层
|    |    └── cangjie/                                      # 仓颉桥接层
|    ├── ios/
|    |    ├── cangjie/                                      # 仓颉桥接层
|    |    └── objective-c/                                  # Objective-C桥接层
|    └── ...
├── project.conf                                            # 工程的配置文件, 由工具自动生成
└── ...
```
