import SwiftUI

struct TabData: Identifiable, Equatable {
    let id = UUID()
    let title: String
    /// コンテンツの説明
    let description: String
    /// SwiftUI コンポーネントを表示する View
    let contentView: AnyView
    /// クリップボードにコピーする Swift コード文字列
    let code: String

    /// code から自動生成。TabBarScreen のコード表示に使用する
    var codeView: AnyView {
        AnyView(CodeWebView(code: code))
    }

    // content があるので独自の Equatable を実装する必要がある
    static func == (lhs: TabData, rhs: TabData) -> Bool {
        lhs.id == rhs.id && lhs.title == rhs.title
    }
}
