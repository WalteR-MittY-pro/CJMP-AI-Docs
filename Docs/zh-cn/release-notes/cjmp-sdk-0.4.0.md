# cjmp-sdk-v0.4.0 Release Notes

## 1. 文档信息
- **版本号**：v0.4.0
- **发布日期**：2026-06-10
- **作者**：CJMP 团队
- **最后更新时间**：2026-06-18

---

## 2. 版本概述

本次发布聚焦于 HarmonyOS 6.0 适配、Android 工具链兼容性、融合模式增强、调试诊断能力补齐和 UI 集成测试完善。相较于 v0.2.3，CJ-UI 新增 Markdown 相关能力，并补充更多 UI 集成测试样例；Engine 增强融合模式多根节点、C API 渲染接入、堆转储输出和平台适配能力；CJMP Tools 补齐 JDK 8 和 DevEco Studio 6.1.1.280 仓颉兼容包相关能力；DevTools 新增基于 gRPC 的堆转储输出链路；VibeCoding 补充 CJMP 文档检索、问题处理和 UI 测试辅助开发资源。

**版本亮点**：
- HarmonyOS 端适配 DevEco Studio 6.1.1.280 仓颉兼容包
- 增强 Android 工具链对 JDK 8 的兼容性
- Engine 支持融合模式多根节点、C API 渲染接入和基于 gRPC 的堆转储输出
- CJ-UI 新增 Markdown 相关 API，并完善 Animator、Router、Matrix4、资源管理等 UI 集成测试样例
- DevTools 提供堆转储调试服务构建与输出能力
- VibeCoding 新增 CJMP 文档检索、问题处理和 UI 测试相关 Skills 资源

---

## 3. 变更详情

### 3.1 CJ-UI

#### 3.1.1 新增特性

- **Markdown 相关 API 支持**
  - **功能描述**：新增 Markdown 相关 API 和测试页面，支持在 CJ-UI 测试应用中验证 Markdown 渲染与交互能力。
  - **使用场景**：适用于富文本、说明页、帮助文档等需要 Markdown 内容展示的 UI 场景。
- **UI 集成测试样例完善**
  - **功能描述**：新增 Animator、Router、Matrix4、State Management、UI Resource、Prompt Action、Font、Measure 等模块的 UI 集成测试样例，并补充基础组件测试内容。
  - **使用场景**：适用于组件能力验证、回归测试和自动化测试接入。
- **一键运行 UI 测试流程**
  - **功能描述**：新增 UI 测试一键运行脚本和测试报告检查脚本，优化测试报告采集、覆盖率报告生成和测试结果校验流程。
  - **使用场景**：适用于本地开发、CI 验证和组件集成测试结果归档。

#### 3.1.2 变更特性

- **Debug 编译支持**
  | 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
  |--------|--------|--------------|----------|
  | CJ-UI 构建脚本以默认构建模式为主 | 构建脚本支持 Debug 编译配置 | 是 | 便于开发调试和问题定位 |

### 3.2 Engine

#### 3.2.1 变更特性

- **macOS 与 Xcode 版本适配**
  | 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
  |--------|--------|--------------|----------|
  | 未覆盖较新 macOS/Xcode 组合 | 补充 macOS 26、Xcode 26.5 相关适配 | 是 | 提升新版 Apple 开发环境下的构建兼容性 |
- **构建产物体积优化**
  | 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
  |--------|--------|--------------|----------|
  | 产物包体积优化不足 | 调整构建配置 | 是 | 降低产物包体积 |

### 3.3 SystemLibs

#### 3.3.1 新增特性

- **ARM32 编译支持**
  - **功能描述**：新增并优化 ARM32 编译链路，覆盖构建配置、工具链配置和 CI 脚本。
  - **使用场景**：适用于需要 ARM32 系统库产物的构建和集成场景。
- **HarmonyOS Cangjie 工具链适配**
  - **功能描述**：更新 HarmonyOS 端 Cangjie 相关配置，配合新版本 SDK 构建链路使用。
  - **使用场景**：适用于 HarmonyOS 平台系统库构建和兼容性验证。
- **CI 覆盖率采集增强**
  - **功能描述**：Android 和 iOS CI 脚本补充覆盖率采集逻辑，并增强 `gcov_dump` 工具能力。
  - **使用场景**：适用于系统库自动化测试、覆盖率统计和质量门禁。

### 3.4 Tools

#### 3.4.1 新增特性

- **Android 工具链 JDK 8 兼容**
  - **功能描述**：新增 Android 工具链兼容逻辑，支持在 JDK 8 环境下完成相关构建流程。
  - **使用场景**：适用于仍需使用 JDK 8 的 Android 构建环境。

#### 3.4.2 变更特性

- **HarmonyOS 支持 API 变更**
  | 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
  |--------|--------|--------------|----------|
  | API 18+ | API 20+ | 否 | HarmonyOS 最低支持版本调整为 API Level 20 |

#### 3.4.3 修复问题

- 修复了 HarmonyOS 设备信息包含非 UTF-8 字符时 `keels devices` 失败的问题
- 修复了 `boundscheck` 重复打包问题

### 3.5 IDE-Plugins

#### 3.5.1 修复问题

- 修复了导入 `ohos.state_macro_manage` 库时编辑器异常飘红的问题

### 3.6 DevTools

#### 3.6.1 新增特性

- **堆转储调试服务**
  - **功能描述**：新增基于 gRPC 的堆转储调试服务，提供服务端、构建脚本、协议生成、静态库合并和命令入口相关能力。
  - **使用场景**：适用于运行态内存分析、堆数据采集和调试工具集成。
- **DevTools C++ 构建链路**
  - **功能描述**：新增 CMake/GN 构建配置、gRPC 下载脚本和调试器构建脚本。
  - **使用场景**：适用于 DevTools 原生调试模块构建和 SDK 打包。

#### 3.6.2 修复问题

- 修复了 DevTools 依赖 OpenSSL 时的构建问题
- 修复了 gRPC 库链接相关问题

### 3.7 VibeCoding

#### 3.7.1 新增特性

- **CJMP 文档检索 Skill**
  - **功能描述**：新增 CJMP 文档检索 MCP 配置、索引脚本和搜索脚本，支持在 AI IDE 中检索 CJMP 文档。
  - **使用场景**：适用于开发过程中快速查询 CJMP 使用说明、接口文档和工程配置资料。
- **CJMP 问题处理 Skill**
  - **功能描述**：新增问题处理 Skill 和 GitCode Issue 辅助脚本。
  - **使用场景**：适用于在 AI IDE 中分析、整理和处理 CJMP 项目问题。
- **CJMP UI 测试 Skill**
  - **功能描述**：新增 UI 测试 Skill，包含测试框架说明、常见问题、工作流文档和 Xcode UI 测试辅助脚本。
  - **使用场景**：适用于编写、运行和排查 CJMP UI 自动化测试。

#### 3.7.2 变更特性

- **环境搭建 Skill 完善**
  | 变更前 | 变更后 | 是否兼容变更 | 变更说明 |
  |--------|--------|--------------|----------|
  | 环境搭建脚本和说明分散维护 | 调整脚本目录结构并完善 macOS、Windows 环境搭建说明 | 是 | 提升 AI IDE 辅助配置和跨平台环境搭建体验 |

---

## 4. 配套说明

### 4.1 源码仓信息

| 源码仓 | 分支号 | Commit ID | 说明 |
|--------|--------|-----------|------|
| CJ-UI | release-cjmp-0.2.4 | 84b1b629d043f96ae3cf29b16cb5f68c14a8e9fb | |
| Engine | release-cjmp-0.2.4 | 614bb7b814aa8a91647b94dcab87f1f589540594 | |
| TestFramework | release-cjmp-0.2.4 | 584ee39364ba89c3196e3a3e06ec88b90b25384f | |
| SystemLibs | release-cjmp-0.2.4 | 243a0f8492791412b18425620f357eb3f196ed72 | |
| Tools | release-cjmp-0.2.4 | 99eae5cd93ea664a58276f2feb151538163a44b8 | |
| IDE-Plugins | release-cjmp-0.2.4 | b3b4065caed33a066741e2d4c3b598e0d98f3f7d | |
| DevTools | release-cjmp-0.2.4 | 879ac91c75bceb02af5b82a2039b183570146adc | |
| VibeCoding | release-cjmp-0.2.4 | 04f69a3cf38dafb876c4b71b00e8825abfcfb306 | |

### 4.2 仓颉工具链版本

| 平台 | 版本号 | 说明 |
|------|--------|------|
| cangjie-ohos | cangjie 1.1.3 | 仓颉 6.1.1.280 兼容包 |
| cangjie-android | cangjie 105.0.0.B206 | tag: v1.2.0-alpha.25 |
| cangjie-ios | cangjie 105.0.0.B206 | tag: v1.2.0-alpha.25 |

---

## 5. SDK 兼容性说明

| 项目 | 支持版本 | 说明 |
|------|----------|------|
| HarmonyOS | 6.0.0+ (API Level 20+) | 需配套 DevEco Studio 6.1.1.280 仓颉兼容包 |
| Android | 8.0+ (API Level 26+) | 继续支持 NDK 27.2.12479018、AGP 8.5.1+；本版本增强 JDK 8 兼容能力 |
| iOS | 12.0+ | 支持模拟器编译 |
| Cangjie 语言版本 | 配套 SDK 版本 | 请以 SDK 内置工具链为准 |
| DevEco Studio | 6.1.1.280 | 需使用对应版本仓颉兼容包 |

**兼容性特别说明**：
- 本版本对 v0.2.3 的业务 API 基本兼容，重点变更集中在 HarmonyOS 兼容包、Android 工具链、调试诊断和工程模板能力。
- HarmonyOS 工程升级时，请同步检查 DevEco Studio 版本、模板配置和 Cangjie 工具链配置。
- Android 工程如依赖 JDK 8，请使用本版本 `keels doctor -v` 检查工具链配置。

---

## 6. 升级指导

### 6.1 升级前准备

1. 备份当前项目代码和配置文件。
2. 确认当前开发环境满足新版本要求（参见 SDK 兼容性说明）。
3. HarmonyOS 工程请确认已安装 DevEco Studio 6.1.1.280 及其仓颉插件和仓颉兼容包。
4. Android 工程请确认 NDK、AGP、JDK 和 Gradle 配置满足项目要求。
5. 确保已安装配套的 Cangjie 工具链版本。

### 6.2 升级步骤

1. 从 [SDK 仓](https://gitcode.com/CJMP/SDK) 拉取 `v0.4.0` 对应版本，确保 LFS 文件已完整下载。
2. 将环境变量 `CJMP_SDK_HOME` 更新为新的 SDK 目录，并确认 `PATH` 中使用的是新 SDK 下的 `keels`。
3. 执行以下命令检查当前工具版本：

```bash
keels --version
```

4. 执行以下命令检查当前开发环境：

```bash
keels doctor -v
```

5. 如需升级已有工程，请同步检查 HarmonyOS、Android、iOS 模板配置及构建脚本。

### 6.3 升级后验证

1. 编译项目，确保无编译错误。
2. 运行单元测试和 UI 自动化测试，验证核心功能正常。
3. 在目标平台（HarmonyOS/Android/iOS）上进行功能测试。
4. 如需验证调试诊断能力，请确认 DevTools 堆转储服务可以正常构建并连接目标应用。

---

## 7. 问题反馈

如果您在使用过程中遇到任何问题，可以通过以下渠道反馈：

- **Issues**：[https://gitcode.com/CJMP/SDK/issues](https://gitcode.com/CJMP/SDK/issues)

**反馈时请提供以下信息**：
1. SDK 版本号（v0.4.0）
2. 操作系统及版本
3. 目标平台（HarmonyOS/Android/iOS）及设备信息
4. 问题复现步骤
5. 错误日志或截图

---

## 8. 版本历史

| 版本 | 发布日期 | 主要变更 | 文档链接 |
|------|----------|----------|----------|
| v0.4.0 | 2026-06-10 | HarmonyOS 升级 6.0，最低支持 API Level 20；工具链兼容 JDK 8 构建 | 当前文档 |
| v0.2.3 | 2026-05-07 | Android 16KB 页大小适配、组件能力补齐和调试体验优化 | [查看](cjmp-sdk-0.2.3.md) |
| v0.2.2 | 2026-03-31 | 组件能力扩展和测试框架完善 | [查看](cjmp-sdk-0.2.2.md) |
| v0.2.1 | 2026-03-03 | 基础能力增强和开发者体验优化 | [查看](cjmp-sdk-0.2.1.md) |
| v0.1.4 | 2025-10-24 | CJMP 首个正式版本，支持跨平台开发 | [查看](cjmp-sdk-0.1.4.md) |
