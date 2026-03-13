# 跨语言调试

## 介绍

如果 CJMP 应用（logic-module CJMP 或 logic-module native 类型）同时包含 Cangjie 部分代码 和 Java 原生代码，在 Android 设备进行工程调试时可以使用 VS Code 调试 Cangjie 代码，使用 Android Studio 调试 Java 代码。

如果 CJMP 应用（logic-module native 类型）同时包含 Cangjie 部分代码 和 ArkTS 原生代码，在 HarmonyOS 设备进行工程调试时可以使用 VS Code 调试 Cangjie 代码，使用 Deveco Studio 调试 ArkTS 代码。

## 前置条件

1. 开始之前需要按照 [开发准备](../quick-start/start-overview.md) 完成对应平台的环境配置，并连接一台终端设备。推荐参照 [环境检查](../quick-start/start-overview.md#环境检查可选) 的步骤检查应用开发环境是否完备。

2. 按照 [安装VS Code的CJMP插件](../quick-start/start-plugins.md#安装-vs-code-的-cjmp-插件) 完成 CJMP 插件 和 Keels-cangjie 插件的安装。

3. Cangjie + Java/ArkTS 的跨语言 CJMP 应用需要编码正确，能够启动运行。

## 跨语言调试流程

参考 [插件介绍](../quick-start/start-plugins.md#创建项目) 完成应用的创建和运行。

### 使用 Android Studio 调试 Java 代码（Android）

以 logic-module CJMP 为例：

1. 使用 VSCode 打开应用，在 `logic-module/common/` 目录下的 Cangjie 代码中打断点并启动调试。

2. 使用 Android Studio 打开工程的 `android` 目录，等待工程 sync 结束。如果报错 Gradle 版本不适配的错误，将 `Settings` -> `Build, Execution, Development` -> `Build Tools` -> `Gradle` 的 `Gradle JDK` 配置项设置为本地 JDK17 的路径。

3. 使用 Android Studio 在 `<工程名>/src/main/java/com/example/<工程名>` 目录下的 Java 代码中打断点。

4. 点击 Android Studio 页面右上方的 [**Attach Debugger to Android Process**](https://developer.android.google.cn/studio/debug?hl=zh-cn) 图标，在弹出窗口中的两个调试相关配置项分别选择 `[Use default settings]` 和 `Java Only`，随后在下方列表中选择需要调试的应用。

5. 此时可以看到 Android Studio 中的断点标志上有对钩，表示已成功设置断点。

6. 在设备上点击应用，当运行到 Cangjie/Java 的断点处时，VS Code 会高亮提示用户触发断点，Android Studio 在触发断点时会直接弹出。可以通过点击 `Resume`、 `Step Over` 等操作在两个 IDE 中跳转。

### 使用 Deveco Studio 调试 ArkTS 代码（HarmonyOS）

以 logic-module native 工程为例：

1. 使用 VSCode 打开应用，在 `logic-module/common/` 目录下的 Cangjie 代码中打断点并启动调试。

2. 使用 Deveco Studio 打开工程的 `hos` 目录，等待工程 sync 结束，在 `entry/src/main/ets/pages/` 目录下的 ArkTS 代码中打断点。

3. 点击 Deveco Studio 页面右上方的 [**Attach Debugger to Process**](https://developer.huawei.com/consumer/cn/doc/harmonyos-guides/ide-debug-arkts-attach) 图标，在弹出窗口中的两个调试相关配置项分别选择 `[Use default settings]` 和 `ArkTS/JS`，随后在下方列表中选择需要调试的应用。

4. 此时可以看到 Deveco Studio 中的断点标志上有对钩，表示已成功设置断点。

5. 在设备上点击应用，成功停在断点位置，可以通过点击 `Resume`、 `Step Over` 等操作在两个 IDE 中跳转。
