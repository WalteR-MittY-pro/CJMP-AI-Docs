package ohos_app_cangjie_entry

internal import ohos.base.LengthProp
internal import ohos.base.Color
internal import ohos.component.*
internal import ohos.state_manage.SubscriberManager
internal import ohos.state_manage.ObservedProperty
internal import ohos.state_manage.LocalStorage
import ohos.state_macro_manage.Entry
import ohos.state_macro_manage.Component
import ohos.state_macro_manage.State
import std.collection.ArrayList

public class Book {
    public Book(
        let name: String,
        let id: Int64
    ) {}
}

class BookDataSource <: IDataSource<Book> {
    public BookDataSource(let data_: ArrayList<Book>) {}
    public var listenerOp: Option<DataChangeListener> = None
    public func totalCount(): Int64 {
        return data_.size
    }
    public func getData(index: Int64): Book {
        return data_[index]
    }

    public func onRegisterDataChangeListener(listener: DataChangeListener): Unit {
        listenerOp = listener
    }

    public func onUnregisterDataChangeListener(listener: DataChangeListener): Unit {
        listenerOp = None
    }

    public func notifyChange(): Unit {
        let listener: DataChangeListener = listenerOp.getOrThrow()
        listener.onDataReloaded()
    }
}

func getDS(): BookDataSource
{
    let data: ArrayList<Book> = ArrayList<Book>()
    for (i in 0..50) {
        data.add(Book("book ${i}", i * i))
    }
    let dataSourcebook: BookDataSource = BookDataSource(data)
    return dataSourcebook
}

let dataSourcebook: BookDataSource = getDS()

@Entry
@Component
class EntryView {

    func build() {
        Row {
            Column {
                List(space: 50, initialIndex: 0) {
                    LazyForEach(dataSourcebook, itemGeneratorFunc: {book: Book, idx: Int64 =>
                        ListItem() {
                            Flex(FlexParams(justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center)){
                                Text(book.name)
                                .width(100.percent).height(40).fontSize(16)
                                .textAlign(TextAlign.Center).borderRadius(10)
                            }
                        }
                    })
                }
                .divider(strokeWidth: 2.px, color: Color(0xDCDCDC), startMargin: 20.px, endMargin: 20.px)
            }.width(100.percent)
        }.height(100.percent)
    }
}