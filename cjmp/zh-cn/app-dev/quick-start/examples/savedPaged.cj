package ohos_app_cangjie_entry

import ohos.base.*
import ohos.component.*
import ohos.state_manage.*
import ohos.state_macro_manage.*
import std.collection.ArrayList
import ohos.router.*



// 解析从主页面传递过来的字符串数据
func parseSavedBooks(savedBooksStr: String): ArrayList<String> {
    let result: ArrayList<String> = ArrayList<String>()
            
    if (savedBooksStr.size > 0) {
        // 按 | 分割键值对
        let parts = savedBooksStr.split("|")
                
        for (part in parts) {
            let name = part
            result.add(name)
        }
    }
    return result
}

@Entry
@Component
class SavedPage{
    @State var message: String = ""
    @State var bookList: ArrayList<String> = ArrayList<String>()

    public override func aboutToAppear(): Unit{
        var str: Option<String> = Router.getParams()
        match(str) {
            case Some(v) => 
                this.message = v
                bookList = parseSavedBooks(message)
            case None => this.message = ""
        }
    }

    func build() {
        Row() {
            Column() {
                Column() {
                    Text('返回')
                    .width(20.percent)
                    .height(50)
                    .onClick{e => Router.back()}
                }
                .width(100.percent)
                .height(50)
                .backgroundColor(0xCCCCCC)
                .alignItems(HorizontalAlign.Start)

                List(space: 50, initialIndex: 0){
                    ForEach(this.bookList, itemGeneratorFunc: {item:String, _: Int64 =>
                        ListItem(){
                            Text(item).width(100.percent).height(40).fontSize(16)
                            .textAlign(TextAlign.Center).borderRadius(10)
                        }

                    })
            
                }
                .divider(strokeWidth: 2.px, color: Color(0xDCDCDC), startMargin: 20.px, endMargin: 20.px)

            }.width(100.percent)
            .position(x:0, y:0)
        }.height(100.percent)
    }
}