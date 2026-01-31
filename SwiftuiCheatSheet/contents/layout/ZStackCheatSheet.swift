import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景色1",
        description: "ZStack を表示領域最大限に広げて表示。.background モディファイアで背景色を指定。",
        contentView: AnyView(
            ZStack {}
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            ZStack {}
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink)
            """)
        )
    ),
    TabData(
        title: "背景色2",
        description: "ZStack を表示領域最大限に広げて表示。 コンストラクタの content 引数に背景色を指定。",
        contentView: AnyView(
            ZStack {
                Color.yellow
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            ZStack {
                Color.yellow
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            """)
        )
    ),

    TabData(
        title: "SafeAreaに背景画像",
        description: "ZStack 内の画像を表示領域最大限に広げ、SafeArea を無視して表示。",
        contentView: AnyView(
            ZStack {
                Image(.backgroundTimer)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            ZStack {
                Image(.backgroundTimer)
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
            }
            """)
        )
    ),
]

struct ZStackCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    ZStackCheatSheet()
}
