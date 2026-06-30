## Engine编译
除了统一构建入口之外，开发者可以单独在仓内进行构建。2者本质上调用的构建命令是一样的。以编译Android目标平台为例：

1.  进入engine仓根目录，执行预编译命令，会下载编译所需依赖（需外网权限）：

```shell
./build/prebuilts_download.sh --build-keels -skip-ssl
```

预构建会下载相关依赖工具，此过程一般只需要**执行一次**。

2.  编译Engine仓：

```shell
./build.sh --product-name keels --target-os android --runtime-mode=[release|debug|profile]
```

若中途报错，根据提示安装缺失的依赖，重新执行编译命令。

默认编译目标平台为arm64，可以使用`--gn-args build_target_cpu=<target>`指定编译目标平台，target支持情况如下：
android: arm64, arm, x86_64
ios: arm64, arm64-simulator
ohos_keels: arm64

3.  编译产物
```
Engine/out/keels/aosp_clang_arm64_release/arkui/keels/libkeels_android.so
Engine/out/keels/aosp_clang_arm64_release/keels_android_adapter.jar
```