# 开发准备
本文档将指导您通过环境搭建、代码下载、代码编译、API扩展和使用，快速了解跨平台项目开发流程。

## 环境准备
### 基础安装
[linux]

`sudo apt-get install binutils git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip m4 git git-lfs`

[macOS]

`brew install wget coreutils git git-lfs`

搭载 Apple 芯片的 macOS 还需下载 Rosetta，下载方式请参考[“如何安装 Rosetta”](https://support.apple.com/zh-cn/102527)。

### gitcode准备
-   针对Git的安装、环境配置及使用方法，请参考GitCode帮助中心的[Git知识大全](https://docs.gitcode.com/docs/help/home/general-reference/git)
-   注册SSH公钥，请参考GitCode帮助中心的[公钥管理](https://docs.gitcode.com/docs/help/home/user_center/security_management/ssh)
-   在开展GitCode的工作流之前，您需要先在CJMP的代码托管平台上找到您感兴趣的Repository。
-   安装必要工具链

### 配置gn环境
```shell
wget https://chrome-infra-packages.appspot.com/dl/gn/gn/mac-amd64/+/latest -O gn-mac-amd64.zip
```
根据电脑架构，选择合适的安装版本
- linux-amd64
- linux-arm64
- mac-amd64
- mac-arm64

解压后，将文件路径设为环境变量，然后执行 `gn --version`，查看环境是否配置成功

### 安装ninja
[macOS]

推荐使用homebrew安装
```shell
brew install ninja
```

[Linux]

```shell
sudo apt update
sudo apt install ninja-build
```

正常输出版本号（如 1.11.1）即表示成功
```shell
ninja --version
```

### 配置JAVA_HOME
目前验证可行版本：mac jdk17, linux jdk11，linux jdk17, linux jdk8(配合Android 8版本Engine编译产物)

[macOS]

macOS 配置与版本要求以应用开发文档为准，详见[应用开发-开发准备](../../app-dev/quick-start/start-overview.md#android-端依赖工具)中的“Android 端依赖工具”章节。

[Linux]

```
export JAVA_HOME=/path/to/java-sdk
export PATH=$JAVA_HOME/bin:$PATH
```

### 配置 Android SDK 环境
[macOS]

macOS 配置与版本要求以应用开发文档为准，详见[应用开发-开发准备](../../app-dev/quick-start/start-overview.md#android-端依赖工具)中的“Android 端依赖工具 / 配置环境变量”。

[Linux]

通过[命令行工具](https://developer.android.google.cn/studio#command-line-tools-only)下载和管理 Android SDK，命令行工具使用说明详见[sdkmanager](https://developer.android.google.cn/studio/command-line/sdkmanager)官方指导。SDK版本下载要求如下：
```shell
sdkmanager --sdk_root=/path/to/your/sdk "platforms;android-31"
sdkmanager --sdk_root=/path/to/your/sdk "build-tools;35.0.0"
sdkmanager --sdk_root=/path/to/your/sdk "platform-tools"
sdkmanager --sdk_root=/path/to/your/sdk "ndk;26.3.11579264"
```

```shell
# 配置环境变量
export ANDROID_SDK_ROOT=/path/to/your/android/sdk
export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
export ANDROID_NDK=$ANDROID_SDK_ROOT/ndk/26.3.11579264
```

### 配置Openharmony SDK环境
[macOS]

macOS 配置与版本要求以应用开发文档为准，详见[应用开发-开发准备](../../app-dev/quick-start/start-overview.md#harmonyos-端依赖工具)中的“HarmonyOS 端依赖工具”章节。

[Linux]

通过[华为开发者官网](https://developer.huawei.com/consumer/cn/deveco-studio/#download)下载 Command Line Tools 工具，推荐版本为 Command Line Tools 5.1.0 Release 及以上。注意安装路径中不要有空格或中文。

完成上面步骤后，配置工具相关的环境变量（在 ~/.bashrc 或 ~/.zshrc 末尾添加）：

```bash
# 下载 Command Line Tools
# 根据实际的 Command Line Tools 安装路径修改环境变量的值
export TOOL_HOME=$HOME/{command-line-tools路径}
export DEVECO_SDK_HOME=$TOOL_HOME/sdk
export PATH=$TOOL_HOME/tool/node/bin:$PATH
export PATH=$DEVECO_SDK_HOME/default/openharmony/toolchains:$PATH
```
添加完毕后执行 `source ~/.bashrc` 或 `source ~/.zshrc` 使修改生效。

### 安装 Xcode（可选）

macOS 配置与版本要求以应用开发文档为准，详见[应用开发-开发准备](../../app-dev/quick-start/start-overview.md#ios-端依赖工具)中的“iOS 端依赖工具”章节。


完成上述操作及基本概念的理解后，即可参照[下载代码](start-download.md)和[编译代码](start-build.md)章节内容进一步体验跨平台框架开发和学习。
