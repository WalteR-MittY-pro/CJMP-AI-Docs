# CJMP Tools 命令行快速指南

## 简介

CJMP Tools 是专为 CJMP 开发者设计的命令行工具，支持 Windows/Linux/macOS 系统，主要用于 HarmonyOS， Android 和 iOS 应用的开发工作。这套工具提供从环境配置检测、项目创建到编译测试的全流程支持，帮助开发者快速完成应用构建与调试。

## 使用说明

### 环境准备

**前置条件：** 开始之前需要按照 [开发准备](start-overview.md) 完成对应平台的环境配置，并连接一台终端设备。推荐参照 [环境检查](start-overview.md#环境检查可选) 的步骤检查应用开发环境是否完备。

### 创建应用

在自定义目录执行以下命令创建一个初始化的 CJMP 应用：

- Linux/macOS

    ``` bash
    # 创建一个名为 demo 的应用
    # <SDK-DIR> 替换为自己的本地路径
    # <demo> 可以替换为自定义路径，例如 ../demo
    ./<SDK-DIR>/cjmp-tools/bin/keels create <demo>
    ```

- Windows

    ``` powershell
    # 创建一个名为 demo 的应用
    # <SDK-DIR> 替换为自己的本地路径
    # <demo> 可以替换为自定义路径，例如 ../demo
    .\<SDK-DIR>\cjmp-tools\bin\keels.bat create <demo>
    ```

切换到上述创建的 demo 应用路径，详细生成的应用结构可参考[应用工程结构介绍](app-info.md)

### 运行应用

**注意：** 如果这里指定的终端是 HarmonyOS 设备，需要手动签名，详细过程参考 [附录A：HarmonyOS 应用签名流程介绍](../tools/tools-cmd.md#附录aharmonyos-应用签名流程介绍)。

- Linux/macOS

    ``` bash
    # 切换到 demo 应用目录
    cd <demo Path>
    # 运行应用, <Path to keels> 替换为自己的本地路径
    ./<Path to keels>/keels run
    ```

- Windows

    ``` powershell
    # 切换到 demo 应用目录
    cd <demo Path>
    # 运行应用, <Path to keels> 替换为自己的本地路径
    .\<Path to keels>\keels run
    ```

运行成功后会将 demo 应用推送至终端，显示界面为 `Hello Keels`。

## 常用命令参考

命令行的详细说明见 [CJMP 命令行工具介绍](../tools/tools-cmd.md)。
