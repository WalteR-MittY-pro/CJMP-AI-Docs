# cjmp-sdk-v0.2.2 Release Notes

## 1. 文档信息
- **版本号**：v0.2.2
- **发布日期**：2026-03-31
- **作者**：CJMP 团队
- **最后更新时间**：2026-04-02

---

## 2. 版本概述

本次发布聚焦于组件能力扩展和测试框架完善。相较于 v0.2.1，新增了 TextClock、ContextMenu、PatternLock、ProgressMask、Animator、Video 等多个组件支持，新增 TestFramework 测试框架仓库，优化了 iOS 模拟器支持，同时修复了多个影响稳定性的问题。详细变更内容请参见后续章节。

**版本亮点**：
- 新增 TextClock、ContextMenu 等 10+ 组件支持
- 新增 TestFramework 测试框架，提供统一跨平台 UI 自动化 API
- SystemLibs 支持 iOS 模拟器编译
- IDE 插件解耦，提升开发体验

---

## 3. 变更详情

### 3.1 CJ-UI

#### 3.1.1 新增特性
- **组件支持**
  - **功能描述**：新增若干组件或功能支持，列表如下：

    | 组件名 | 功能描述 |
    | :------ | :------- |
    | SidebarContainer | 侧边栏容器 |
    | Hyperlink | 超链接 |
    | Stepper | 步骤导航器 |
    | StepperItem | 步骤导航项 |
    | Rating | 评分条 |
    | Video | 视频播放  |
    | Counter | 计数器 |
    | DataPanel | 数据面板   |
    | PatternLock   | 图案锁   |
    | ProgressMask  | 形状裁剪   |
    | QRCode | 二维码 |
    | TextClock | 系统时钟文本显示 |
    | Ellipse | 椭圆绘制 |
    | Path | 图形绘制 |
    | Menu | 菜单 |
    | MenuItem | 菜单项 |
    | MenuItemGroup | 菜单项分组 |
    | ContextMenu | 上下文菜单 |
    | Animator | 帧动画 |
    | ComponentId | 组件标识 |
    | Font | 字体 |

  - **使用场景**：组件使用方式详见[仓颉官方文档-仓颉组件](https://developer.huawei.com/consumer/cn/doc/cangjie-references/cj-components)部分。

- **组件测试代码完善**
  - **功能描述**：完善组件测试代码，增加测试场景。
  - **使用场景**：组件功能验证和回归测试。

### 3.2 Engine

#### 3.2.1 新增特性

- **TextClock 与 ContextMenu 组件支持**
  - **功能描述**：新增若干组件支持，列表见 [CJ-UI 新增特性](#311-新增特性)。
  - **使用场景**：适用于基于上述组件进行页面开发、交互实现和功能适配的场景。

- **测试框架接口支持**
  - **功能描述**：提供测试框架新接口。
  - **使用场景**：测试框架调用引擎接口进行 UI 测试。


### 3.3 TestFramework

#### 3.3.1 新增特性

- **测试框架迁移与仓库结构**
  - **功能描述**：本仓为新增独立仓，包含 `cj_uitest` 仓颉 UI 测试 API 层、uitest C++ 测试内核与 CJ FFI 桥接、xdevice（Android/iOS/HarmonyOS 等设备管理与用例执行框架）。业务侧通过同一套仓颉 API 驱动各平台 UI 自动化测试。
  - **使用场景**：在业务 App 内集成 UI 测试、统一多平台自动化脚本编写与执行的场景。

- **完善 Component**
  - **功能描述**：补充 getDescription（FfiComponentGetDescription），用于读取组件 description 属性（如无障碍描述）；补充 scrollSearch（FfiComponentScrollSearch），在可滚动容器内于当前可视区匹配后，再按限次上下滑动查找满足 On 条件的子组件。均补齐仓颉 API、FFI 与 uitest 原生 Driver 链路。
  - **使用场景**：依赖描述文案或无障碍信息做断言与日志、在列表/长页面中定位初始不可见的控件等 UI 自动化场景。

- **完善 Driver**
  - **功能描述**：补齐截图（全屏 screenCap、带矩形区域的 screenCapture）、屏幕方向（getDisplayRotation、setDisplayRotation、setDisplayRotationEnabled）、显示屏幕相关参数（getDisplaySize、getDisplayDensity）、pressHome 返回系统桌面等能力；
  - **使用场景**：失败现场截屏留证、横竖屏与分辨率相关用例、从被测应用退回桌面等自动化测试场景。

#### 3.3.2 修复问题

- 修复了 Component 获取边界坐标及中心点坐标不准的问题

### 3.4 SystemLibs

#### 3.4.1 新增特性

- **iOS 模拟器支持**
  - **功能描述**：支持 iOS 模拟器编译。
  - **使用场景**：需要在 iOS 模拟器上进行开发的场景。

#### 3.4.2 修复问题

- 修复了 getAddressesByName 不能解析网址的问题
- 修复了测试框架结构问题

### 3.5 Tools

#### 3.5.1 新增特性

- **App 模板增强**
  - **功能描述**：增强 app 模板功能。
  - **使用场景**：适用于创建 app 工程时需要更多初始化配置选项的场景。

- **CJMP UI Test 适配**
  - **功能描述**：CJMP 模板工程适配 UI Test 测试框架。
  - **使用场景**：适用于基于 UI 测试框架开展自动化测试的场景。

#### 3.5.2 变更特性

- **HOS 编译优化**

| 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
|--------|--------|--------------|----------|
| 使用系统 node | 使用 DevEco 中的 node | 是 | 编译 HarmonyOS 时使用 DevEco 中的 node，避免环境依赖问题 |

- **iOS 设备查询与应用推送流程优化**

| 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
|--------|--------|--------------|----------|
| 依赖第三方工具 | 移除第三方工具依赖 | 是 | 优化iOS设备查询与应用推送流程，移除对第三方工具依赖 |

#### 3.5.3 修复问题

- 修复了 CJMP logic-module 工程先用 DevEco 打开鸿蒙工程后再运行 Android 失败的问题
- 修复了 bash 5.1 在 Android 端编译报错问题

### 3.6 IDE-Plugins

#### 3.6.1 新增特性

- **插件解耦**
  - **功能描述**：针对跨平台调试场景完成 Cangjie 插件与 CJMP 插件的职责解耦。
  - **使用场景**：适用于在 VS Code 中对 CJMP 工程进行跨平台调试的场景。

#### 3.6.2 修复问题

- 修复了 getLibPath 兼容 AGP 8.x 产物路径问题
- 修复了安卓调试结束后设备端 lldb-server 未关闭的问题

### 3.7 DevTools

#### 3.7.1 新增特性

- **单元测试代码覆盖率提升**
  - **功能描述**：设计并完善单元测试用例，整体代码覆盖率提升至 85% 以上。
  - **使用场景**：开发者工具的单元测试和质量保证。

---

## 4. 配套说明

### 4.1 源码仓信息

| 源码仓 | 分支号 | Commit ID | 说明 |
|--------|--------|-----------|------|
| CJ-UI | release-cjmp-v0.2.2 | 03ed1fdab918175a8ea184e62f632e8dee1346ca | |
| Engine | release-cjmp-v0.2.2 | 3b9c58e148d78930be99dbd20c44838ecbec28c8 | |
| TestFramework | release-cjmp-v0.2.2 | 9f3985596d40e7aafd556a01774625550bf171df | 初始版本 |
| SystemLibs | release-cjmp-v0.2.2 | 54de47a652d8ee763cbb64435b78242fc5e74659 | |
| Tools | release-cjmp-v0.2.2 | e59954ed7bbf0b88f1f2592deb647335a683a676 | |
| IDE-Plugins | release-cjmp-v0.2.2 | bd1830e22d560e9c89d2bea27c465c7510753429 | |
| DevTools | release-cjmp-v0.2.2 | 0a1ac38417621a30afea2ef66c06ac907170edde | |

### 4.2 仓颉工具链版本

| 平台 | 版本号 | 说明 |
|------|--------|------|
| cangjie-ohos | 内置版本 | DevEco Studio 5.1.1.851 一体化版本中内置的 Cangjie SDK |
| cangjie-android | cangjie 103.1.0.B062 | |
| cangjie-ios | cangjie 103.1.0.B062 | |

---

## 5. SDK 兼容性说明

| 项目 | 支持版本 | 说明 |
|------|----------|------|
| HarmonyOS | 5.1.0+ | 需配套 DevEco Studio 5.1.1.851 版本 |
| Android | 8.0+ (API Level 26+) | |
| iOS | 12.0+ | 支持模拟器编译 |
| 仓颉语言版本 | 103.1.0.B062 | |
| DevEco Studio | 5.1.1.851 | 一体化版本中内置 Cangjie SDK |

**兼容性特别说明**：
- 本版本兼容 v0.2.1 版本，开发者可直接升级
- 请确保使用配套的仓颉工具链版本，避免版本不匹配导致的问题

---

## 6. 升级指导

### 6.1 升级前准备

1. 备份当前项目代码和配置文件。
2. 确认当前开发环境满足新版本要求（参见 SDK 兼容性说明）。
3. 确保已安装配套的仓颉工具链版本。

### 6.2 升级步骤

1. 从 [SDK 仓](https://gitcode.com/CJMP/SDK)拉取 `v0.2.2` 对应分支，确保 LFS 文件已完整下载。
2. 将环境变量 `CJMP_SDK_HOME` 更新为新的 SDK 目录，并确认 `PATH` 中使用的是新 SDK 下的 `keels`。
3. 执行以下命令检查当前工具版本：

```bash
keels --version
```

### 6.3 升级后验证

1. 编译项目，确保无编译错误
2. 运行单元测试，验证核心功能正常
3. 在目标平台（HarmonyOS/Android/iOS）上进行功能测试

---

## 7. 问题反馈

如果您在使用过程中遇到任何问题，可以通过以下渠道反馈：

- **Issues**：[https://gitcode.com/CJMP/SDK/issues](https://gitcode.com/CJMP/SDK/issues)

**反馈时请提供以下信息**：
1. SDK 版本号（v0.2.2）
2. 操作系统及版本
3. 问题复现步骤
4. 错误日志或截图

---

## 8. 版本历史

| 版本 | 发布日期 | 主要变更 | 文档链接 |
|------|----------|----------|----------|
| v0.2.2 | 2026-03-31 | 组件能力扩展和测试框架完善 | 当前文档 |
| v0.2.1 | 2026-03-03 | 基础能力增强和开发者体验优化 | [查看](cjmp-sdk-0.2.1.md) |
| v0.1.4 | 2025-10-24 | CJMP 首个正式版本，支持跨平台开发 | [查看](cjmp-sdk-0.1.4.md) |

---

**备注**：本版本为兼容升级，开发者可直接从 v0.2.1 升级使用。
