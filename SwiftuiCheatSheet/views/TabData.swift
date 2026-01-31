import SwiftUI

struct TabData: Identifiable, Equatable {
    let id = UUID()
    let title: String
    /// コンテンツの説明
    let description: String
    /// SwiftUI コンポーネントを表示する View
    let contentView: AnyView
    /// プログラムコードを表示する View
    let codeView: AnyView

    // content があるので独自の Equatable を実装する必要がある
    static func == (lhs: TabData, rhs: TabData) -> Bool {
        lhs.id == rhs.id && lhs.title == rhs.title
    }
}
