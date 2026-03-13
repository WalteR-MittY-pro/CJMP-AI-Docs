# CJMP编译构建
CJMP的编译构建采用build仓下build.sh作为统一的构建入口。通过传参可以指定需要构建的组件。

## 前提条件

repo下载完代码，环境配置完成。CJMP根目录有build.sh的软链接。

## 构建说明

```shell
Usage: bash build.sh [options]
Options:
  -h, --help         可选，显示帮助信息
  -v, --version      可选，显示CJMP的版本号
  -p, --project      必选，指定要构建的项目，支持的项目有：engine systemlibs
  -m, --mode         可选，指定构建模式，默认：release，支持的模式有：release debug profile
  -o, --os           可选，指定构建的系统，默认：android，支持的系统有：android ios
  -f, --platform     可选，指定构建的平台，默认：linux，支持的平台有：linux macos
  --prebuild         可选，是否需要预先构建，默认：false
```

## 组件构建

### [engine编译](../engine/engine-build.md)

以release构建为例：

```shell
bash build.sh -p engine -m release -o android [--prebuild]
```

**注意，第一次构建需加上`--prebuild`参数下载依赖。后续构建无需再加此参数。**

构建成功截图如下：
![engine构建成功](../engine/figure/build_succ.png)

- [编译产物](../engine/engine-build.md#3-编译产物)

### [systemlibs编译](../systemlibs/systemlibs-build.md)

- macos:
```shell
bash build.sh -p systemlibs -f macos -m [release|debug]
```

- linux:
```shell
bash build.sh -p systemlibs -m [release|debug]
```

![构建成功](../systemlibs/figure/lib_build_succ.png)

### [cj-ui编译](https://gitcode.com/CJMP/CJ-UI/blob/main/README.md)

**注意，第一次构建需要按照[cj-ui编译](https://gitcode.com/CJMP/CJ-UI/blob/main/README.md)文档配置编译所需环境。**

- HarmonyOS 编译:
> 暂不需编译

- Android 编译:
```shell
bash build.sh android
```

- iOS 编译:
```shell
bash build.sh ios
bash build.sh ios-sim   # iOS 模拟器产物编译
```