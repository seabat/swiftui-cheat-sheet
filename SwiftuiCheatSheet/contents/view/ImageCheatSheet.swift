import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "画像リソース",
        description: "Assets.xcassets に格納した画像リソースを表示する。",
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
        description: "システム画像 cloud.heavyrain を表示する。",
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
        description: "システム画像(cloud.heavyrain)を色を付けて表示する。サイズは .largeTitle。",
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
        description: "Assets.xcassets に格納した画像リソースに背景色を付ける。",
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
        title: "画像拡大",
        description: "描画可能領域を画像で埋める。",
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
        description: "サイズを指定して画像を表示する",
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
        description: "画像の横幅を指定する。",
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
        title: "アスペクト比維持",
        description: "画像の縦横比を維持しながら、画面幅に合わせて拡大する。",
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
        description: "画像の周りに padding をつける",
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
        description: "SafeAreaを無視して全面表示",
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
