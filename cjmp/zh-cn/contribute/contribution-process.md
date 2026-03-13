# 社区代码提交流程
```mermaid
graph LR
	subgraph 创建issue
		明确issue标题和描述 --> 指定负责人 --> 选择正确的issue类型 --> 关联里程碑
    end
    subgraph 创建branch
    	关联里程碑 --> 从issue创建分支
    end
    subgraph 创建pr/更新pr
    	从issue创建分支 -->  关联里程碑和issue --> 更新pr
    end
    subgraph 代码审查
    	更新pr --> 触发门禁 --> 代码检视
    end
    代码检视 --> |成功|pr合入
```

## 一、创建issue

### 1. 标题清晰阐述问题

### 2. 指定负责人

### 3. 选择正确的issue类型
![image.png](https://raw.gitcode.com/CJMP/Docs/attachment/uploads/14c2641f-dfc2-4c51-833f-b581c994a081/image.png 'image.png')

### 4. 关联里程碑
![image.png](https://raw.gitcode.com/CJMP/Docs/attachment/uploads/9021011e-4484-4d6a-8b08-013cb28e5230/image.png 'image.png')

## 二、 创建分支

### 1. 从issue创建分支
![image.png](https://raw.gitcode.com/CJMP/Docs/attachment/uploads/d81a66a2-af5e-41d6-b423-0a97482ea9f5/image.png 'image.png')

## 三、 创建PR

### 1. 选择正确的PR类型

### 2. 关联里程碑

### 3. 关联issue
![create_pr](image/create_pr.jpg)

##  四、代码审查
### 1. 触发门禁
PR更新后，在评论区评论“**retest**”以触发门禁（若有）。  
门禁通常由静态检查、编译构建 、UT组成。
门禁通过后，ci-robot会在“测试人员”区+1。
### 2. 代码检视
可联系责任田的审查人进行代码审查，审查通过后+1，至少需要1个审查人+1 。

## 五、 PR合入
需要 1名评审人 + 1名测试人员 通过后才能合入。

![merge_pr](image/merge_pr.jpg)