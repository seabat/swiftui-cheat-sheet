import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "カスタム画像",
        contentView: AnyView(
            Image(.shop)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            Image(.shop)
            """)
        )
    ),
    TabData(
        title: "システム画像",
        contentView: AnyView(
            Image(systemName: "cloud.heavyrain.fill")
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            Image(systemName: "cloud.heavyrain.fill")
            """)
        )
    ),
    TabData(
        title: "システム画像にスタイル",
        contentView: AnyView(
            Image(systemName: "cloud.heavyrain.fill")
                .foregroundColor(.red)
                .font(.largeTitle)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(systemName: "cloud.heavyrain.fill")
                .foregroundColor(.red)
                .font(.largeTitle)
            """)
        )
    ),
    TabData(
        title: "背景色",
        contentView: AnyView(
            Image(.shop)
                .background(Color.blue)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .background(Color.blue)
            """)
        )
    ),
    TabData(
        title: "描画可能領域を画像で埋める",
        contentView: AnyView(
            Image(.shop).resizable()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop).resizable()
            """)
        )
    ),
    TabData(
        title: "サイズ指定",
        contentView: AnyView(
            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0, height: 100.0)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0, height: 100.0)
            """)
        )
    ),
    TabData(
        title: "横幅指定",
        contentView: AnyView(
            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0)
            """)
        )
    ),
    TabData(
        title: "アスペクト比を維持して拡大",
        contentView: AnyView(
            Image(.shop).resizable().scaledToFit()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop).resizable().scaledToFit()
            """)
        )
    ),
    TabData(
        title: "padding",
        contentView: AnyView(
            Image(.shop).resizable().scaledToFit().padding()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop).resizable().scaledToFit().padding()
            """)
        )
    ),
    TabData(
        title: "SafeArea",
        contentView: AnyView(
            Image(.backgroundTimer)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.backgroundTimer)
                .resizable()
                .ignoresSafeArea()
                .scaledToFill()
            """)
        ),
    ),
]

struct ImageCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    ImageCheatSheet()
}
