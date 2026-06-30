# 开发准备

## 权限申请

用户需先通过[Harmony 官方权限申请](https://developer.huawei.com/consumer/cn/activityDetail/cangjie-beta/) 获得仓颉语言相关文档权限。

##  安装 CJMP SDK

### 1. 下载 CJMP SDK

当前支持的 CJMP SDK 版本及各平台下载入口，请参见 [SDK 版本信息](https://gitcode.com/CJMP/SDK/blob/main/README.md)。**注意本地存储路径中不要有空格或中文**。

### 2. 配置 CJMP SDK

CJMP 工程构建依赖 `CJMP_SDK_HOME` 环境变量，请将其设置为 SDK 安装目录。如需在终端直接使用 `keels` 命令，请将 `CJMP_SDK_HOME/cjmp-tools/bin` 添加到 PATH 环境变量中。

- **Windows:**

    1. 右键【此电脑】→ 属性 → 高级系统设置 → 环境变量。  
    2. 新建系统环境变量： CJMP_SDK_HOME → <SDK_DIR>（CJMP SDK 实际安装路径）。
    3. 编辑系统变量 Path，新建条目： `%CJMP_SDK_HOME%\cjmp-tools\bin;`。
    4. 确认保存所有更改，重启命令行终端使配置生效。

- **macOS:**

    1. 编辑 Shell 配置文件（～/.zshrc），在末尾添加：
    
        ```bash
        # CJMP 配置
        export CJMP_SDK_HOME=/path/to/your/cjmp-sdk
        export PATH=$CJMP_SDK_HOME/cjmp-tools/bin:$PATH
        ```
    2. 添加完毕后执行 `source ~/.zshrc` 使修改生效。

### 3. 安装 Visual Studio Code（可选，推荐安装）

如果想基于IDE开发管理 CJMP 应用工程，可通过安装 VS Code 及其 CJMP 插件来实现。
- 访问[官网](https://code.visualstudio.com/)下载并安装适用于您系统的 VS Code。
- 按照[CJMP插件使用指南](start-plugins.md)的说明，在 VS Code 中完成 CJMP 插件的安装。

## 安装依赖工具

CJMP 命令行基于 Python 开发，请确保已安装 Python >= 3.8 的稳定版本。

### Android 端依赖工具

#### 1. 下载 Android SDK 及其扩展工具

CJMP 工程编译构建 Android 端依赖 Android SDK 及其扩展工具，若本地未安装，可通过以下两种方式之一进行安装。

- **方式一：通过 Android Studio 安装（推荐）：**

    1. 官网下载 [Android Studio](https://developer.android.google.cn/studio?hl=zh-cn) 安装包，运行安装程序，按照提示安装 Android SDK。**注意安装路径中不要有空格或中文**。
    2. 安装扩展工具，打开 Android Studio 中的 `SDK Manager`，进入 `SDK Tools` 页面，勾选右下角 `Show Package Details`，选择安装以下工具：
        - Android SDK Platform - **需要安装 Android 8.0 / API 26 平台 SDK**
        - Android SDK Build-Tools - **应用编译和打包工具，最低要求 34.0.0**
        - Android SDK Platform-Tools - **用于设备连接和调试（通常安装最新版即可）**
        - NDK (Side by side) - **需要安装指定版本 27.2.12479018**

- **方式二：通过命令行工具安装：**

    1. 官网下载 [命令行工具](https://developer.android.google.cn/studio?hl=zh-cn) 压缩包（进入官方网页后搜索“命令行”，下载 commandlinetools 的 ZIP 压缩包）。
    2. 创建 Android SDK 目录。**注意路径中不要有空格或中文**。
    3. 安装扩展工具，解压命令行工具到上一步创建的目录，进入 `cmdline-tools/bin`，执行以下命令：

        ```bash
        # 安装指定版本的 Android 平台，需要安装 Android 8.0 / API 26
        sdkmanager --sdk_root=$ANDROID_SDK_ROOT "platforms;android-26"

        # 安装 Android SDK Build-Tools 应用编译和打包工具，最低要求 34.0.0
        sdkmanager --sdk_root=$ANDROID_SDK_ROOT "build-tools;34.0.0"

        # 安装 Android SDK Platform-Tools，用于设备连接和调试（通常安装最新版即可）
        sdkmanager --sdk_root=$ANDROID_SDK_ROOT "platform-tools"

        # 安装 NDK (Side by side)，需要安装指定版本 27.2.12479018
        sdkmanager --sdk_root=$ANDROID_SDK_ROOT "ndk;27.2.12479018"
        ```

        注：--sdk_root 参数用于明确指定 SDK 的根目录，确保组件被安装到正确的位置。执行前请确保已正确配置 `ANDROID_SDK_ROOT` 环境变量。

    4. 若工程已存在 Android 构建脚本，请同步将 `Android Gradle Plugin` 升级到 `8.5.1` 或以上，确保 APK/AAB 在打包阶段能够正确处理 16KB 页大小对齐。AGP 兼容性可参考 [AGP 8.5.0 Release Notes](https://developer.android.com/build/releases/agp-8-5-0-release-notes?hl=zh-cn)。

#### 2. 下载 JDK

Android SDK 依赖 JDK 环境，若本地未安装，请访问 [Oracle JDK](https://www.oracle.com/java/technologies/downloads/) 或 [OpenJDK](https://jdk.java.net/) 下载 JDK17 压缩包，解压至本地目录。AGP `8.5.1` 运行 Gradle 时要求 **JDK 最低版本为 17**，推荐直接使用 JDK17。**注意安装路径中不要有空格或中文**。

#### 3. 使用 legacy 工具链兼容 JDK8（可选）

Android 端默认使用 `modern` 工具链，推荐配合 JDK17 使用。若因存量工程兼容需要使用 JDK8，可在创建工程时通过 `--android-toolchain legacy` 指定使用 `legacy` 工具链，参数说明请参见 [create 命令](../tools/tools-cmd.md#create-命令)。使用 `legacy` 工具链前，请完成以下配置：

1. 安装 JDK8，并将 `JAVA_HOME` 指向 JDK8 安装目录。

   若此前已按默认推荐配置为 JDK17，切换到 `legacy` 工具链时需要同步调整 `JAVA_HOME`。

2. 安装 Android SDK Build-Tools `29.0.2`。

   `legacy` 工具链使用的 AGP `4.0.2` 会默认查找 `build-tools/29.0.2`。若本地未安装，可通过以下两种方式之一进行安装。

   - 通过 Android Studio 安装：打开 `SDK Manager`，进入 `SDK Tools` 页面，勾选 `Show Package Details`，选择安装 `Android SDK Build-Tools 29.0.2`。
   - 通过命令行安装：

        ```bash
        sdkmanager --sdk_root=$ANDROID_SDK_ROOT "build-tools;29.0.2"
        ```

3. 安装 CMake `3.10.2`。

   `legacy` 工具链需要使用旧版 CMake，若本地未安装，可通过以下两种方式之一安装 CMake `3.10.2`。

   - 通过 Android Studio 安装：打开 `SDK Manager`，进入 `SDK Tools` 页面，勾选 `Show Package Details`，选择安装 CMake `3.10.2`。
   - 通过命令行安装：

        ```bash
        sdkmanager --sdk_root=$ANDROID_SDK_ROOT "cmake;3.10.2.4988404"
        ```

4. Apple Silicon Mac 需安装 Rosetta 2。

   旧版 CMake 的 macOS 可执行文件通常是 Intel `x86_64` 架构。如果在 Apple Silicon Mac（M1/M2/M3）上构建，需要安装 Rosetta 2 才能转译运行；否则可能出现 `Bad CPU type in executable` 错误。可执行以下命令安装 Rosetta 2。

   ```bash
   softwareupdate --install-rosetta --agree-to-license
   ```

#### 4. 配置环境变量

- **Windows:**

    1. 右键【此电脑】→ 属性 → 高级系统设置 → 环境变量。  
    2. 新建系统环境变量： 
        - ANDROID_SDK_ROOT → <SDK_DIR>（Android SDK 实际安装路径）。
        - JAVA_HOME → <JDK_DIR>（JDK 实际安装路径）。
    3. 编辑系统变量 Path，新建以下条目：
        - `%ANDROID_SDK_ROOT%\platform-tools;`
        - `%JAVA_HOME%\bin;`
    4. 确认保存所有更改，重启命令行终端使配置生效。

- **macOS:**

    1. 编辑 Shell 配置文件（～/.zshrc），在末尾添加：
    
        ```bash
        # Android SDK 配置
        export ANDROID_SDK_ROOT=/path/to/your/android/sdk
        export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH

        # Java JDK 配置
        export JAVA_HOME=/path/to/your/jdk
        export PATH=$JAVA_HOME/bin:$PATH
        ```
    2. 添加完毕后执行 `source ~/.zshrc` 使修改生效。

#### 5. 验证安装

使用 `keels` 命令行工具的 doctor 子命令检查 Android 端依赖工具及环境变量是否配置正确。该命令会检查 Android SDK、JDK、NDK 是否安装并给出输出提示。

```bash
$CJMP_SDK_HOME/cjmp-tools/bin/keels doctor -v
```

### HarmonyOS 端依赖工具

#### 1. 下载并安装 DevEco Studio 与仓颉插件

CJMP 工程编译构建 HarmonyOS 端依赖 DevEco Studio 与仓颉插件。若本地未安装，可通过[华为开发者官网](https://developer.huawei.com/consumer/cn/download/all)下载并安装 DevEco Studio `6.1.1.280` 和 DevEco Studio-Cangjie Plugin `6.1.1.280`。

**注意安装路径中不要有空格或中文**。

#### 2. 配置仓颉兼容包

1. 联系 CJMP 开发团队获取仓颉兼容包，并解压到本地任一路径，例如 `/home/cangjiesdk`。

    macOS 上解压前需删除隔离属性，否则可能影响兼容包内工具执行。

    ```bash
    xattr -d com.apple.quarantine /home/cangjiesdk/compatibility-sdk-mac-aarch64-xxx.zip
    ```

2. 单击 `Help` > `Edit Custom Properties...` 打开 `idea.properties` 配置文件，添加如下配置，指向上述解压的仓颉兼容包 SDK 目录全路径。

    ```properties
    cangjie.compatible.sdk.location=/home/cangjiesdk/compatibility
    ```

3. 关闭并重新打开 DevEco Studio。

#### 3. 配置环境变量

- **Windows:**

    1. 右键【此电脑】→ 属性 → 高级系统设置 → 环境变量。  
    2. 新建系统环境变量： 
        - DEVECO_SDK_HOME → <SDK_DIR>（DevEco Studio 安装目录下的 `sdk` 目录路径）。
        - DEVECO_CANGJIE_PATH → <CANGJIE_COMPATIBILITY_DIR>（仓颉兼容包解压后的目录路径）。
    3. 编辑系统变量 Path，新建以下条目：
        - `%DEVECO_SDK_HOME%\default\openharmony\toolchains;`
    4. 确认保存所有更改，重启命令行终端使配置生效。

- **macOS:**

    1. 编辑 Shell 配置文件（～/.zshrc），在末尾添加：
    
        ```bash
        # 根据实际的 DevEco Studio 安装路径修改环境变量的值
        export DEVECO_SDK_HOME=/Applications/DevEco-Studio.app/Contents/sdk
        export PATH=$DEVECO_SDK_HOME/default/openharmony/toolchains:$PATH

        # 根据实际的仓颉兼容包解压路径修改环境变量的值
        export DEVECO_CANGJIE_PATH=/home/cangjiesdk/compatibility
        ```

    2. 添加完毕后执行 `source ~/.zshrc` 使修改生效。

#### 4. 验证安装

使用 `keels` 命令行工具的 doctor 子命令检查 HarmonyOS 端依赖工具及环境变量是否配置正确。该命令会根据 `DEVECO_SDK_HOME` 检查 HarmonyOS SDK，以及 `ohpm`、`node`、`hvigor` 等 HarmonyOS 构建工具是否可用，并给出提示信息。

```bash
$CJMP_SDK_HOME/cjmp-tools/bin/keels doctor -v
```

### iOS 端依赖工具

#### 1. 下载 Xcode

CJMP 工程在 macOS 平台编译构建 iOS 端时依赖 Xcode，若本地未安装，可通过App Store 官方下载 [Xcode](https://apps.apple.com/cn/app/xcode/id497799835?mt=12)（版本推荐 16.0+），不要安装多个版本，避免路径冲突。

#### 2. 配置环境变量

- 编辑 Shell 配置文件（～/.zshrc），在末尾添加：

    ```bash
    # 配置 Xcode SDK 路径，根据实际安装路径修改变量值
    export IOS_SDK_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk                    
    ```
- 添加完毕后执行 `source ~/.zshrc` 使修改生效。

#### 3. 下载第三方工具

1. 第三方工具安装依赖 macOS 的包管理工具 Homebrew，若本地未安装，可执行以下命令：

    ```bash
    # 安装 Homebrew，安装过程会要求输入密码（输入时不会显示字符，直接回车确认即可）
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # 安装完成后，将 Homebrew 添加到 PATH
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
    source ~/.zshrc

    # 验证是否安装成功
    brew --version
    ```

2. 编译过程中自动加载动态库依赖 Ruby 和 xcodeproj 库，若本地未安装，可执行以下命令：

    ```bash
    # 安装 Ruby
    brew install ruby

    # 安装完成后，将 Ruby 添加到 PATH
    echo 'export PATH="/opt/homebrew/opt/ruby/bin:$PATH"' >> ~/.zshrc
    source ~/.zshrc

    # 安装 xcodeproj 库
    gem install xcodeproj
    ```

#### 4. 验证安装

使用 `keels` 命令行工具的 doctor 子命令检查 iOS 端依赖工具及环境变量是否配置正确。该命令会检查 Xcode、Ruby、xcodeproj 是否安装并给出输出提示。


### 模拟器依赖工具（可选）

若要在 macOS 上使用 Android、HarmonyOS、iOS 模拟器，需要进行如下操作：

**创建 Android 模拟器**
- Android Studio ——> Main Menu ——> Tools ——> Device Manager ——> Create Virtual Device

**创建 HarmonyOS 模拟器**
- DevEco Studio ——> Main Menu ——> Tools ——> Device Manager ——> New Emulator
- 若修改了 Local Emulator Location, 则需要配置OHOS_EMULATOR_HOME

    ```bash
    export OHOS_EMULATOR_HOME=%USERPROFILE%\\AppData\\Local\\Huawei\\Emulator\\deployed # windows 默认路径
    export OHOS_EMULATOR_HOME=~/.Huawei/Emulator/deployed # macOS 默认路径
    ```
- 若修改了 Local Image Location, 则需要配置OHOS_IMAGE_HOME
    ```bash
    export OHOS_IMAGE_HOME=%USERPROFILE%\\AppData\\Local\\Huawei\\Sdk # windows默认路径
    export OHOS_IMAGE_HOME=~/Library/Huawei/Sdk # macOS 默认路径
    ```

**创建 iOS 模拟器**
- 配置xcode simulator SDK路径，根据实际安装路径修改变量值

    ```bash
    export IOS_SIM_SDK_DIR=/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk
    ``` 

### 环境检查（可选）

切换到 CJMP SDK 根目录并执行以下命令进行环境检查：

```bash
# Windows
.\cjmp-tools\bin\keels.bat doctor -v

# macOS
./cjmp-tools/bin/keels doctor -v
```

## 更多环境配置（可选）


### 服务端连接参数配置

如果需要在主机A上控制主机B上连接的 Android/HarmonyOS 设备，需要进行本章节的配置，**否则应该跳过，避免与本地环境变量冲突**。

#### 1. 环境变量配置

- **Windows:**

    **方法1：** 图形界面设置：
    右键【此电脑】→ 属性 → 高级系统设置 → 环境变量。
    用户变量/系统变量 → 新建变量名：
    HDC_SERVER → 变量值：[主机B的IP地址]
    HDC_SERVER_PORT → 变量值：[主机B的HDC服务监听端口](默认8710)
    ADB_SERVER_SOCKET → 变量值：tcp:[主机B的IP地址]:[主机B的ADB服务监听端口](默认5037)

    **方法2：** 命令行设置：
    打开 powershell

    ```powershell
    export HDC_SERVER "[主机B的IP地址]"
    export HDC_SERVER_PORT "[主机B的HDC服务监听端口]"     # 默认8710
    export ADB_SERVER_SOCKET "tcp:[主机B的IP地址]:[主机B的ADB服务监听端口]"      # ADB服务监听端口默认5037

- **macOS:**

    **注意：** macOS用户如果是首次使用zsh需要手动创建文件：

    ```bash
    touch ~/.zshrc                  # 创建文件
    nano ~/.zshrc                   # 在文件中添加变量
    source ~/.zshrc                 # 立即生效
    ```

    打开配置文件 （~/.zshrc），在文件末尾添加：

    ```bash
    export HDC_SERVER=[主机B的IP地址]
    export HDC_SERVER_PORT=[主机B的HDC服务监听端口]     # 默认8710
    export ADB_SERVER_SOCKET=tcp:[主机B的IP地址]:[主机B的ADB服务监听端口]  # ADB服务监听端口默认5037
    ```

    添加完毕后执行 `source ~/.zshrc` 使修改生效。

#### 2. 必备条件检查

    - 已有主机A（需要运行keels命令的主机）和主机B（连接 Android/HarmonyOS 设备的主机）。
    - 主机A需要能够连接到主机B。
    - 确保防火墙已开放相关端口（默认 **5037**（ADB）、**8710**（HDC））。

#### 3. 检测 Android 设备

- **在主机B启动 ADB 服务：**

    以管理员身份打开主机B的终端或命令行，执行以下命令：

    ```bash
    adb kill-server
    adb -a start-server
    ```

    预期输出：

    ```bash
    * daemon not running; starting now at tcp:5037
    * daemon started successfully
    ```

- **验证 ADB 端口监听状态：**

    ```bash
    # Windows
    netstat -ano | findstr 5037
    # macOS
    netstat -ano | grep 5037
    ```

    预期显示为：

    ```bash
    TCP    0.0.0.0:5037    0.0.0.0:0    LISTENING    <PID>    # bind 0.0.0.0 地址
    ```

#### 4. 检测 HarmonyOS 设备

- **在主机B启动 HDC 服务:**

    以管理员身份打开主机B终端，执行

    ```bash
    hdc kill -server
    hdc -s 0.0.0.0:8710 start
    ```

    **注意：** 保持此终端窗口运行（服务需持续后台执行）。

- **验证 HDC 端口监听状态:**

    ```bash
    # Windows
    netstat -ano | findstr 8710
    # macOS
    netstat -ano | grep 8710
    ```

    预期显示为：

    ```bash
    TCP    0.0.0.0:8710    0.0.0.0:0    LISTENING    <PID>    # bind 0.0.0.0 地址
    ```

#### 5. 验证设备连接

在主机B上连接 Android/HarmonyOS 设备，然后打开主机A终端，执行：

```bash
# Windows
.\cjmp-sdk-<version>\cjmp-tools\bin\keels.bat devices

# macOS
./cjmp-sdk-<version>/cjmp-tools/bin/keels devices
```
