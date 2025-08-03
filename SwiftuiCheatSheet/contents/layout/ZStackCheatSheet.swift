import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景色1",
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
