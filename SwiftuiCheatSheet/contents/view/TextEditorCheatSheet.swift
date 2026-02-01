import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "準備中",
        description: "準備中",
        contentView: AnyView(
            AsyncTabView()
        ),
        codeView: AnyView(
            CodeWebView(code: """
                    準備中
            """)
        )
    ),
]

struct TextEditorCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    TextEditorCheatSheet()
}
