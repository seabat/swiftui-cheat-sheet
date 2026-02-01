import SwiftUI

extension Color {
    // カスタムカラーを静的プロパティとして定義
    static let extensionBackground = Color(red: 235/255, green: 235/255, blue: 235/255)
}

private let tabs: [TabData] = [
    // プログラム上でカスタムカラーを定義
    TabData(
        title: "extensionカラー",
        description: "プログラムで定義したカラーを指定する。",
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
            extension Color {
                // カスタムカラーを静的プロパティとして定義
                static let extensionBackground = Color(red: 235/255, green: 235/255, blue: 235/255)
            }
            
            ZStack {
                Color.extensionBackground
                Text("largeTitle")
                    .font(.largeTitle)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            """)
        )
    ),
    TabData(
        title: "Assetカラー",
        description: "Assets.xcassets に設定したカラー定義 assetBackground を指定する。Light、Dart モードでカラーを切り替えるには  Assets.xcassets を使用する",
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
