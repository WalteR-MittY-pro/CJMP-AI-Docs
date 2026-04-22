# **CJMP-AI-Docs**

本仓库是 **CJMP 文档库**，用于汇集 CJMP 相关文档及其依赖知识，当前内容包括两部分：

- **仓颉语言及生态文档**：作为 CJMP 的语言与工具链基础资料
- **CJMP 项目文档**：同步自 `https://gitcode.com/CJMP/Docs` 的中文文档目录

仓颉语言本身已具备跨平台能力，CJMP 文档则围绕跨平台框架、应用开发、框架开发和版本发布等主题持续补充。

## 仓库结构

当前仓库按实际目录组织如下：

### `cjmp`

- **目录说明**：CJMP 官方中文文档目录，已从 [CJMP/Docs](https://gitcode.com/CJMP/Docs) 同步到本仓库。
- **内容范围**：包含应用开发者快速入门、框架开发者快速入门、贡献指南、版本说明等内容。
- **AI 检索基准路径**：优先从 `cjmp/zh-cn/` 开始定位，`zh-cn` 下的一级目录已经按主题完成分区。
- **目录树（推荐 AI 按路径语义理解）**：

```text
cjmp/
└── zh-cn/
    ├── app-dev/                 应用开发文档
    │   ├── README.md            应用开发总入口
    │   ├── quick-start/         快速开始、工程结构、插件、示例代码
    │   └── tools/               SDK 结构、命令行工具、跨语言调试
    ├── framework-dev/           框架开发文档
    │   ├── quick-start/         开发准备、下载代码、编译、项目结构说明
    │   ├── engine/              engine 相关设计与构建说明
    │   ├── systemlibs/          systemlibs 设计、构建、测试说明
    │   └── cj-ui/               UI 组件参考
    ├── contribute/              贡献流程、代码规范、文档模板、特性设计
    │   ├── doc-template/        文档模板
    │   ├── feature-design/      特性设计文档
    │   └── image/               贡献流程配图
    ├── release-notes/           SDK 版本说明，按版本号命名
    └── LICENSE                  上游许可证副本
```

- **路径语义约定**：
	- `README.md`：通常是当前主题目录的总入口，AI 应优先阅读。
	- `quick-start/`：面向入门和流程导航，适合先建立上下文。
	- `tools/`：工具、命令行、SDK 目录、调试相关内容。
	- `engine/`、`systemlibs/`、`cj-ui/`：框架子模块文档，适合按组件或能力精确查找。
	- `examples/`：示例代码，适合查找可运行或可参考的最小样例。
	- `image/`、`figure/`：配图资源，通常不是主要知识源，除非需要查看界面或流程截图。
	- `doc-template/`、`feature-design/`：偏贡献和设计规范，不属于应用开发主线文档。
- **AI 查找建议**：
	- 查“应用开发、工程结构、插件、命令、调试”时，先看 `cjmp/zh-cn/app-dev/README.md`，再进入 `quick-start/` 或 `tools/`。
	- 查“框架编译、源码下载、engine、systemlibs、组件开发”时，先看 `cjmp/zh-cn/framework-dev/quick-start/README.md`，再进入对应子目录。
	- 查“提交流程、编码规范、文档模板、设计文档”时，直接进入 `cjmp/zh-cn/contribute/`。
	- 查“版本变化、某个 SDK 版本更新内容”时，直接搜索 `cjmp/zh-cn/release-notes/cjmp-sdk-*.md`。
- **快速入口**：
	- [应用开发快速开始](cjmp/zh-cn/app-dev/quick-start/README.md)
	- [框架开发快速开始](cjmp/zh-cn/framework-dev/quick-start/README.md)
	- [版本说明](cjmp/zh-cn/release-notes/cjmp-sdk-0.2.1.md)

## 后续规划

- 持续同步 **CJMP/Docs** 仓库更新
- 持续同步仓颉语言及生态相关公开文档更新
- 进一步完善适用于跨平台开发场景的知识组织与索引方式

## 来源与许可说明

- `cjmp/` 目录内容同步自 [CJMP/Docs](https://gitcode.com/CJMP/Docs)
- 上游 `CJMP/Docs` 使用 **Apache License 2.0**，已在 cjmp/zh-cn/LICENSE 保留副本
- 其他目录的许可与来源以各自原始文档和仓库声明为准
