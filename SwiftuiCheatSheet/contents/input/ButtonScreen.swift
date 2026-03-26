import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "テキストボタン",
        description: "テキストリンクボタン。",
        contentView: AnyView(
            Button(
                action: {
                    print("タップされた！")
                },
                label: {
                    Text("ボタン")
                }
            )
        ),
        code: """
            import SwiftUI

            Button(
                action: {
                    print("タップされた！")
                },
                label: {
                    Text("ボタン")
                }
            )
            """
    ),
    TabData(
        title: "画像ボタン",
        description: "画像ボタン。",
        contentView: AnyView(
            Button(
                action: {
                    print("タップされた！")
                },
                label: {
                    Image(.lightBulb)
                }
            )
        ),
        code: """
            import SwiftUI

            Button(
                action: {
                    print("タップされた！")
                },
                label: {
                    Image(.lightBulb)
                }
            )
            """
    ),
]

struct ButtonScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    ButtonScreen()
}
