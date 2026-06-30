# cjmp.app.ability

ability模块提供了包含BaseContext类的定义。

## 导入模块

```cangjie
package cjmp.app.ability.*
```

## 权限列表
| 平台 | 权限 |
|:----|:----|
| HarmonyOS | ohos.permission.DISTRIBUTED_DATASYNC<br>ohos.permission.PREPARE_APP_TERMINATE<br>ohos.permission.PRIVACY_WINDOW |
| Android | 无需权限 |
| iOS | 无需权限 |

## 使用说明

API示例代码使用说明：

- 若示例代码首行有"// index.cj"注释，表示该示例可在仓颉模板工程的"index.cj"文件中编译运行。
- 若示例需获取[Context](./cj-apis-app-ability-ui_ability.md#class-context)应用上下文，需在仓颉模板工程中的"main_ability.cj"文件中进行配置。

## class BaseContext

```cangjie
public abstract class BaseContext {
    public let stageModel: Bool
}
```

**功能：** 所有Context类型的父类。

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**跨平台能力：** 支持HarmonyOS、Android、iOS。

**起始版本：** 22

### let stageModel

```cangjie
public let stageModel: Bool
```

**功能：** 表示是否Stage模型。

**类型：** Bool

**读写能力：** 只读

**系统能力：** SystemCapability.Ability.AbilityRuntime.Core

**跨平台能力：** 支持HarmonyOS，暂不支持Android、iOS。

**起始版本：** 22

**示例：**

<!-- compile -->
```cangjie
import cjmp.app.ability.*
import kit.ArkUI.WindowStage

class MyUIAbility <: UIAbility {
    public override func onWindowStageCreate(windowStage: WindowStage): Unit {
          let isStageMode = this.context.stageMode
    }
}
```
