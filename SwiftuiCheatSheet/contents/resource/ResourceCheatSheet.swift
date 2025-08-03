import SwiftUI

extension Color {
    // カスタムカラーを静的プロパティとして定義
    static let extensionBackground = Color(red: 235/255, green: 235/255, blue: 235/255)
}

private let tabs: [TabData] = [
    // プログラム上でカスタムエラーを定義
    TabData(
        title: "extensionカラー",
        contentView: AnyView(
            ZStack {
                Color.extensionBackground
                Text("largeTitle")
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            ZStack {
                Color.backgroundSetting
                Text("largeTitle")
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            """)
        )
    ),
    // Assets.xcassets にカラーを設定
    // Light、Dart モードでカラーを切り替えるには  Assets.xcassets を使用する
    TabData(
        title: "Assetカラー",
        contentView: AnyView(
            ZStack {
                Color.assetBackground
                Text("largeTitle")
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            ZStack {
                Text("largeTitle")
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink)
            """)
        )
    ),
]

struct ResourceCheetSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    ResourceCheetSheet()
}
