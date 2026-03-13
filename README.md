# **CJMP-AI-Docs**

本仓库是 **CJMP 文档库**，汇集所有CJMP相关文档或引用，当前阶段主要收录 **仓颉编程语言** 及其相关生态文档，并已按统一目录结构整理为适合 **RAG（检索增强生成）**、知识库检索、智能问答与辅助编码等场景使用的 Markdown 语料。

现阶段内容以仓颉语言官方文档、标准库文档、工具链文档和 OpenHarmony 相关文档为主。**CJMP 专属文档将于后续版本逐步补充进入本仓库。**

仓颉语言本身已具备跨平台能力，因此当前仓库内容既可作为仓颉语言学习与检索基础，也可作为后续扩展到 CJMP 文档体系的底座。

## 仓库结构

当前仓库主要覆盖仓颉语言 **v1.0.0** 相关公开文档，并按实际目录组织如下：

### `cangjie_collections_extra`

- **目录说明**：扩展整理的仓颉集合类相关资料与补充示例。
- **内容特点**：围绕数组、集合、字符串、排序、元组、数值与函数等主题进行补充归档，便于检索与场景化使用。

### `cangjie_lang_manual`

- **目录说明**：仓颉语言开发指南与语言手册。
- **对应来源**：[仓颉官网用户开发指南](https://cangjie-lang.cn/docs?url=%2F1.0.0%2Fuser_manual%2Fsource_zh_cn%2Ffirst_understanding%2Fbasic.html)
- **内容范围**：覆盖语言基础、类型系统、函数、泛型、并发、包管理、编译构建、运行部署、FFI、反射与注解等核心主题。

### `cangjie_libs`

- **目录说明**：仓颉标准库与扩展库文档。
- **对应来源**：[仓颉官网标准库文档](https://cangjie-lang.cn/docs?url=%2F1.0.0%2Flibs%2Fstd%2Fstd_module_overview.html) 和 [Cangjie stdx](https://gitcode.com/Cangjie/cangjie_stdx/tree/main)
- **内容范围**：包含 `std` 与 `stdx` 两大部分，覆盖集合、IO、网络、并发、数据库、加密、测试、日志、序列化等模块。

### `cangjie_system`

- **目录说明**：OpenHarmony 与系统侧仓颉能力相关文档。
- **对应来源**：[OpenHarmony 仓颉开发者文档](https://gitcode.com/openharmony-sig/docs_cangjie/tree/master)
- **内容范围**：包括仓颉在 OpenHarmony 中的能力概览、应用开发文档及生态侧相关资料。

### `cangjie_tools`

- **目录说明**：仓颉工具链与配套工具使用文档。
- **对应来源**：[仓颉官网工具指南](https://cangjie-lang.cn/docs?url=%2F1.0.0%2Ftools%2Fsource_zh_cn%2FChapter_00_Cover.html)
- **内容范围**：涵盖 `cjpm`、`cjfmt`、`cjlint`、`cjdb`、`cjcov`、`cjprof`、`cjtrace` 等工具的使用说明与开发流程文档。

## 使用说明

本仓库中的文档以 Markdown 形式保存，尽可能保留原始章节结构、标题层级与专业术语，便于：

- 构建 CJMP / 仓颉相关知识库与向量检索系统
- 为智能编码助手、问答系统和教学辅助工具提供语料支持
- 按目录快速映射回官方文档主题与章节

## 后续规划

- 持续同步仓颉语言及生态相关公开文档更新
- 在现有仓颉语料基础上补充 **CJMP 专属文档**
- 进一步完善适用于跨平台开发场景的知识组织与索引方式

## 版本说明

当前仓库内容以仓颉语言 **v1.0.0** 相关文档为基础整理。若后续引入 CJMP 专属文档或新增跨平台相关内容，将在仓库中按实际主题继续扩展，并保持目录结构清晰可检索。