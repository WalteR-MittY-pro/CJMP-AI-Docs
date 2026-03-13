## Engine设计

UI引擎主要由多UI前端适配层、UI组件、渲染管线、图形引擎、执行引擎和平台适配层等主要部件构成，CJMP基于已有能力和应用诉求进行增量和定制化开发，满足广大应用开发者对高性能UI引擎的诉求。

- **UI引擎架构**

![image.png](https://raw.gitcode.com/user-images/assets/4557111/ecdd21e7-9ed3-49f1-b952-a3a60fd89c0b/image.png 'image.png')

- **多UI前端适配**

多UI前端适配层提供两套API接口，可分别支持Taro\React Native\CJMP-UI等。

- CJMP-UI

以Text为例，一个简单的显示Hello Cangjie文本的应用如下：

````
@Entry
@Component
class MyView {
    func build() {
        Text("Hello Cangjie")
    }
}
````
其中，以@Entry修饰的自定义组件MyView作为CJMP-UI界面入口，build函数为入口函数。

经过CJMP框架编译和构建处理后，补充UI入口函数逻辑和其他接口数据结构等，以保证正常的渲染、更新等功能以及页面回调函数的注册。他们在合适时机由CJMP框架自动执行，展开后的UI应用界面示意如下：
````
class MyView <: CustomView {
    // 框架补充build函数逻辑，并在合适时机自动调用
    public func build() {
        this.observeComponentCreation({ elmtId, isInitialRender = > Text("Hello Cangjie") })
        ()
    }
    // 其他接口
    public override func aboutToBeDeleted() {}
    public func rerender() {}
}

// 添加加载NativeView，注册页面回调函数的接口，由框架在合适时机自动调用
public func appEntry(): Bool {
    let view = MyView(Option < CustomView >.None)
    loadNativeView(view)
}

let A_P_1 = CJEntry.getInstance().registerEntry("MyView", appEntry0)
````
用户启动应用时，在程序启动阶段将必要的仓颉UI侧函数以回调函数的形式进行注册，其中包括`MyView::build`接口。并且通过全局常量`A_P_1`初始化以及`LoadPage`过程中完成`NativeView`等初始化和页面回调函数注册，包括`renderFunc`，其由CJMP框架接收到Vsync信号时触发执行。

后续渲染阶段中，其内的`NativeView::InitialRender`方法通过C语言和仓颉语言的互调用机制执行之前注册的`MyView::build`，进入仓颉UI界面生成逻辑。该过程中，仓颉*Text*组件通过FFI互调用接口生成系统组件*FrameNode*，后续由CJMP框架引擎提供的渲染管线完成*FrameNode*树，即组件树的测量、布局、绘制等渲染流程，最终显示在屏幕上。

整体交互流程如下：

程序启动阶段：
![image.png](https://raw.gitcode.com/user-images/assets/4557111/49179736-70ea-495b-adcb-ec0b5aced34f/image.png 'image.png')

渲染阶段：
![image-1.png](https://raw.gitcode.com/user-images/assets/4557111/f5c89c99-ca7c-4457-983b-84e68531a7f8/image-1.png 'image-1.png')

<!-- 程序启动时，通过全局常量`A_P_1`初始化以及`LoadPage`过程中完成`NativeView`等初始化和页面回调函数注册,包括`renderFunc`，由CJMP框架接收到Vsync信号时触发执行。其内的`NativeView::InitialRender`方法通过C语言和仓颉语言的互调用机制执行之前注册的`MyView::build`，从而进入UI界面生成逻辑。经过一系列C和仓颉语言互调用，生成系统原生组件节点FrameNode，后续由CJMP框架引擎提供的渲染管线完成测量、布局、绘制等渲染流程，最终显示在屏幕上。-->

- 自定义组件

CJMP框架提供内置组件`CustomView`，以满足开发者自定义组件的需求，如将多个基础内置组件按固定形式组合为复合组件，并实现该复合组件的复用。一个简单的`CustomView`开发举例如下，利用两个文本框组合出*Hello Cangjie*字样：

````
@Component
class SayHi {
    func build() {
        Row(10) {
            Text("Hello")
            Text("Cangjie")
        }.height(30).width(380).alignItems(VerticalAlign.Center).justifyContent(FlexAlign.Center)
    }
}
````
其中，以`@Component`修饰的自定义类型`SayHi`，在构建过程中框架自动为其补充`CustomView`继承关系和接口定义，示意如下。添加的接口和功能实现由CJMP框架内部完成，开发者无需感知。

````
// CJMP框架处理后的SayHi组件
class SayHi <: CustomView {
    public func build() {
        this.observeComponentCreation({ elmtId, InitialRender =>
            Row(10) {
                this.observeComponentCreation({ elmtId, InitialRender =>
                    Text("Hello")
                })
                this.observeComponentCreation({ elmtId, InitialRender =>
                    Text("Cangjie")
                })
            }.height(30).width(380).alignItems(VerticalAlign.Center).justifyContent(FlexAlign.Center)
        })
        ()
    }
}
````
开发者定义了`SayHi`后，可将其视为普通组件多次复用，每个复用显示相同的内容。
````
@Entry
@Component
class MyView <: CustomView {
    func build() {
        // 分别于上下两行显示"Hello Cangjie"字样
        Column() {
            SayHi()
            SayHi()
        }
    }
}
````
另外，前述的所有例子中，以`@Entry`和`@Component`修饰的自定义组件，是一种可以作为页面入口的特殊`CustomView`。