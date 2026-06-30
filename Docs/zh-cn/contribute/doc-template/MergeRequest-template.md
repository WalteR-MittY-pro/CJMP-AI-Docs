# **Merge Request 模板规范**

## **1. 适用范围**

本文为 CJMP 仓库通用 MR 模板规范，用于说明各仓提交 PR/MR 时的共性要求。

---

## **2. Commit Title 规范**
### **2.1 标签体系** (必选)
```markdown
[一级标签][二级标签] [#Issue编号] 简明标题（≤50字符）

示例：
[feature][cj-ui] #124 Counter 组件新增 enableInc 开关
[bugfix][engine] #66 Counter FrameNode 创建后崩溃
```

#### **一级标签** (必须选择)
| 标签       | 使用场景                          |
|------------|---------------------------------|
| `[feature]` | 新功能开发                      |
| `[bugfix]`  | 缺陷修复                        | 
| `[refactor]`| 代码重构（不改变外部行为）      |

#### **二级标签** (按模块选择，以下为当前常见仓示例)
| 标签          | 对应领域                          |
|---------------|----------------------------------|
| `[engine]`    | CJMP UI 引擎                    |
| `[cj-ui]` | CJMP UI库  |
| `[docs]`   | CJMP 文档库                     |
| `[devtools]`  | 开发工具链                      |
| `[ide-plugins]` | IDE 插件相关                  |
| `[systemlibs]` | 系统库相关                     |
| `[test]`      | 测试相关                        |
| `[tools]`     | 工具仓                          |

### **2.2 标题校验要求**

- 如有对应 Issue，可在标题中补充 Issue 编号，例如：`#123`
- 简明标题长度不超过 50 字符
- 标题格式中的空格、括号顺序需严格符合规范
- 如标题中填写了 Issue 编号，应与 PR 中关联的 Issue 保持一致

---

## **3. Issue 关联要求**

- Issue 关联为可选项，不要求为每个 PR 强制创建或关联 Issue
- 如已有对应 Issue，可在 PR 标题或正文中填写 Issue 编号，并在右侧关联对应 Issue
- 如填写了 Issue 编号，应与已关联的 Issue 保持一致

---

## **4. 问题单MR模板**
### **4.1 关联信息**
```markdown
- Issue（可选）：#<issue>
- 里程碑（可选）：<milestone>
```

### **4.2 问题描述** (必填)
```markdown
**复现路径**：
1. 在 CJ-UI 侧调用 Counter 组件并开启 enableInc
2. 点击按钮触发 FFI 调用
3. 引擎侧崩溃或日志提示 FrameNode 未初始化

**现象**：
控制台抛出 "CounterModel::Create() invalid node" 异常

**根因分析**：
CJ-UI 的 `foreign` 声明与 engine 侧 `extern "C"` 接口不一致，导致参数解析错误

**关联链路**：
- CJ-UI 组件入口：`CJ-UI/.../component/counter.cj`
- Engine FFI 实现：`engine/.../cj_ffi/cj_counter_ffi.cpp`
- Pattern/FrameNode：`engine/.../components_ng/pattern/counter/`
```

### **4.3 解决方案** (必填)
```markdown
**核心改动**：
- 统一 CJ-UI 与 engine 侧 FFI 签名
- 增加 FrameNode 创建前的参数校验与日志

**影响范围**：
- Counter 组件及其依赖的渲染链路
- 若有兼容性风险需说明回滚策略
```

### **4.4 用户可见变更** (若无则写"无")
```markdown
- [API变更] 新增`SliverConstraints.validate()`方法
- [行为变更] Counter 在 `enableInc=false` 时不再绑定点击事件
```

### **4.5 自验方案** (必填)
```markdown
✅ 测试用例：
- CJ-UI：`cj_frontend/.../component/counter_test.cj`
- Engine：`foundation/.../pattern/counter/counter_pattern_test.cpp`
- 手动测试：按钮点击与重复渲染场景

🔧 验证环境：
CJMP SDK 0.1.4 • iOS/Android/HarmonyOS 真机
```

---

## **5. 特性MR模板**
### **5.1 关联信息**
```markdown
- Issue（可选）：#<issue>
- 里程碑（可选）：<milestone>
- 关联模块/目录：<paths>
```

### **5.2 详细描述** (必填)
```markdown
**功能目标**：
为 Counter 组件新增 `step` 参数以控制步进值

**技术方案**：
1. CJ-UI 侧新增 `step` 属性与 DSL 宏参数透传
2. 补充 engine 侧 FFI 接口并在 CounterModel 中处理
3. 更新 Pattern 的布局与点击逻辑

**关联模块**：
- `CJ-UI/.../component/counter.cj`
- `engine/.../cj_ffi/cj_counter_ffi.cpp`
- `engine/.../components_ng/pattern/counter/`
```

### **5.3 用户可见变更** (若无则写"无")
````markdown
- [新增API] 
  ```
  Counter(step: 2, enableInc: true)
  ```
- [行为变更] Counter 每次点击步进值可配置
````

### **5.4 自验方案** (必填)
```markdown
📊 性能指标：
- 点击响应耗时无回退（含低端设备）

🧪 测试用例：
- `CJ-UI/.../counter_step_test.cj`
- `engine/.../pattern/counter/` 相关单测

🔧 验证环境：
- 版本/分支/commit：
- 设备与系统：
```

---

## **6. 重构MR模板** ♻
### **6.1 关联信息**
```markdown
- Issue（可选）：#<issue>
- 里程碑（可选）：<milestone>
- 重构范围：<modules/paths>
```

### **6.2 重构背景** (必填)
```markdown
**现状问题**：
`Counter` 相关 FFI 与模型逻辑分散在多个文件，维护成本高

**优化目标**：
- 统一 FFI 入口，降低重复逻辑
- 保持既有 API 与行为不变
```

### **6.3 详细描述** (必填)
```markdown
**重构策略**：
1. 提取 Counter 的公共属性处理到独立 helper
2. 合并重复的 FFI 参数解析逻辑
3. 增加必要的回归单测

**风险控制**：
- 保持原有单元测试100%通过
- 新增手势竞技场压力测试
```

### **6.4 用户可见变更** (若无则写"无")
```markdown
- 无
```

### **6.5 自验方案** (必填)
```markdown
🧪 测试用例：
- 回归单测 / 集成测试 / 手动验证场景

🔧 验证环境：
- 版本/分支/commit：
- 设备与系统：
```

---

**模板使用提示**：
1. 标注“必填”的章节必须填写，`里程碑` 为可选项
2. 代码块使用标准Markdown语法
3. Issue 为可选项；如有对应 Issue，可在 PR 标题或正文中填写编号，并在 PR 右侧关联
4. 涉及性能改动必须补充性能指标与对比结果
