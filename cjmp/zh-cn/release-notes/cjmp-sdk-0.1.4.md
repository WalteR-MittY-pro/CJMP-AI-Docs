# cjmp-sdk-v0.1.4 Release 20251024

## 版本概述
本次发布为CJMP的首个正式版本，致力于打造高效统一的跨平台开发体验。基于“一套代码，多端部署”的核心架构，CJMP显著降低了多平台应用的开发与维护成本，为开发者提供更灵活、更高效的技术选择。
- Windows: 支持开发 HarmonyOS 与 Android 应用、组件与库。
- macOS: 全面支持 HarmonyOS、Android 与 iOS 应用、组件与库。


## 开发平台及运行平台配套说明
CJMP开发平台目前支持的操作系统有Win10+/Mac14+，所开发的应用支持运行在 HarmonyOS 5.1.0+/arm64、Android 8.0+/arm64、iOS 11.0+/arm64平台。


## 特性说明
目前命令行和插件支持范围如下：

### 命令行工具

|  | doctor | devices | emulators |  create | build | run |
|--|--|--|--|--|--|--|
| windows | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| mac | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

### VSCode插件
 
|  | emulators | create | build | run | debug | devices|
|--|--|--|--|--|--|--|
| windows | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| mac | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

### 仓颉UI组件支持列表  

[已支持仓颉UI组件](https://gitcode.com/CJMP/Docs/blob/main/zh-cn/framework-dev/cj-ui/README.md)

## 版本依赖

### 源码仓
| 源码仓       | 分支号  | commit节点                              |
| ----------- | ------ | -------------------------------------- |
| CJ-UI       | main   | ad33615a54a83d79a6c50fb2f17101b2dff3ba39 |
| Engine      | main   | 3444c32f4a2aa64ad86dbc858eab65d9fe8e0d28 |
| Libraries   | main   | 90823eca69d0b7ff4449b6a31fdeb2587dab75b9 |
| Tools       | main   | 213335bcc6420a1690e60e8997386ee353d5d0c1 |
| IDE-Plugins | main   | a64a324075620892d28c0f4cdd5436ad1f3e09fc |

### 仓颉工具链
- cangjie-ohos: 0.60.4
- cangjie-android: 0.65.1
- cangjie-ios: 0.65.1