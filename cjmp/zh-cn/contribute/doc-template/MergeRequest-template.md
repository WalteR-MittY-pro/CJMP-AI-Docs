# **Merge Request 模板规范** 

## **1. Commit Title 规范** 
### **1.1 标签体系** (必选)
```markdown
[一级标签][二级标签] #Issue编号 简明标题（≤50字符）

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

#### **二级标签** (按模块选择,以下为示例参考，具体模块根据仓模块编写)
| 标签          | 对应领域                          |
|---------------|----------------------------------|
| `[engine]`    | CJMP UI引擎             |
| `[cj-ui]` | CJMP UI库  |
| `[docs]`   | CJMP 文档库                     |
| `[libraries]`   | CJMP系统库                  |

---

## **2. 问题单MR模板** 
### **2.1 问题描述** (必填)
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

### **2.2 解决方案** (必填)
```markdown
**核心改动**：
- 统一 CJ-UI 与 engine 侧 FFI 签名
- 增加 FrameNode 创建前的参数校验与日志

**影响范围**：
- Counter 组件及其依赖的渲染链路
- 若有兼容性风险需说明回滚策略
```

### **2.3 用户可见变更** (若无则写"无")
```markdown
- [API变更] 新增`SliverConstraints.validate()`方法
- [行为变更] Counter 在 `enableInc=false` 时不再绑定点击事件
```

### **2.4 自验方案** (必填)
```markdown
✅ 测试用例：
- CJ-UI：`cj_frontend/.../component/counter_test.cj`
- Engine：`foundation/.../pattern/counter/counter_pattern_test.cpp`
- 手动测试：按钮点击与重复渲染场景

🔧 验证环境：
CJMP SDK 0.1.4 • iOS/Android/HarmonyOS 真机
```

---

## **3. 特性MR模板**  
### **3.1 详细描述** (必填)
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

### **3.2 用户可见变更**
````markdown
- [新增API] 
  ```
  Counter(step: 2, enableInc: true)
  ```
- [行为变更] Counter 每次点击步进值可配置
````

### **3.3 自验方案**
```markdown
📊 性能指标：
- 点击响应耗时无回退（含低端设备）

🧪 测试覆盖：
- `CJ-UI/.../counter_step_test.cj`
- `engine/.../pattern/counter/` 相关单测
```

---

## **4. 重构MR模板** ♻
### **4.1 重构背景**
```markdown
**现状问题**：
`Counter` 相关 FFI 与模型逻辑分散在多个文件，维护成本高

**优化目标**：
- 统一 FFI 入口，降低重复逻辑
- 保持既有 API 与行为不变
```

### **4.2 详细描述**
```markdown
**重构策略**：
1. 提取 Counter 的公共属性处理到独立 helper
2. 合并重复的 FFI 参数解析逻辑
3. 增加必要的回归单测

**风险控制**：
- 保持原有单元测试100%通过
- 新增手势竞技场压力测试
```

### **4.3 自验方案**
```markdown
⚖️ A/B测试：
- 新旧版本在复杂手势场景下的FPS对比

🔍 静态检查：
- 通过`cjmp analyze --fatal-infos`验证
```

---

## **5. 特殊场景说明** 
### **5.1 回退提交**
```markdown
[revert] 回退原因说明（必须关联原MR链接）

示例：
[revert] 回退#321 MR：新渲染管线导致iOS闪退
```

### **5.2 多MR协作**
```markdown
**当前MR范围**：
- Part 1/2：CJ-UI 侧 组件改造
- 后续计划：
  - Part 2：engine 侧 FFI 与 Pattern 改造
```

---

**模板使用提示**：
1. 所有标题级内容为必填项
2. 代码块使用标准Markdown语法
3. 关键数据需提供量化指标
4. 涉及性能改动必须附基准测试结果
