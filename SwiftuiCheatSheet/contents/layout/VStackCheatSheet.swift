import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景色",
        description: "VStack に背景色を付ける。",
        contentView: AnyView(
            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .background(Color.red.opacity(0.15))
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .background(Color.red.opacity(0.15))
            """)
        )
    ),
    TabData(
        title: "サイズ",
        description: "VStack に幅 200pt・高さ 100ptを指定する。",
        contentView: AnyView(
            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100)
            .background(Color.red.opacity(0.15))
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100)
            .background(Color.red.opacity(0.15))
            """)
        )
    ),
    TabData(
        title: "左寄せ揃い",
        description: "VStack の子ビューを左寄せで揃えて表示する。",
        contentView: AnyView(
            VStack(alignment: .leading) {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100)
            .background(Color.red.opacity(0.15))
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            VStack(alignment: .leading) {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100)
            .background(Color.red.opacity(0.15))
            
            // alignment の値
            //   .leading    左（LTR の場合）に揃える
            //   .center    中央に揃える
            //   .trailing    右（LTR の場合）に揃える
            """)
        )
    ),
    TabData(
        title: "左寄せ位置",
        description: "VStack の子ビューの配置位置を左寄せで表示する。",
        contentView: AnyView(
            VStack() {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100, alignment: .leading)
            .background(Color.red.opacity(0.15))
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            VStack() {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100, alignment: .leading)
            .background(Color.red.opacity(0.15))
            
            // alignment の値
            //   .leading    左（LTR の場合）に揃える
            //   .center    中央に揃える
            //   .trailing    右（LTR の場合）に揃える
            """)
        )
    ),
]

struct VStackCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    VStackCheatSheet()
}

#Preview("デフォルトの隙間を削除") {
    // VStack は アイテム間にデフォルトの隙間が存在する。
    VStack(spacing: 0) {
        Text("上部アイテム")
            .foregroundColor(.white)
            .background(.pink)
        Text("下部アイテム")
            .foregroundColor(.white)
            .background(.green)
    }
}

#Preview("内側にパディング") {
    // VStack は アイテム間にデフォルトの隙間が存在する。
    VStack(spacing: 0) {
        Text("上部アイテム")
            .foregroundColor(.white)
            .background(.pink)
        Text("下部アイテム")
            .foregroundColor(.white)
            .background(.green)
    }
    .padding(20)
    .background(Color.gray.opacity(0.2))
}

#Preview("Spacerで余白を可能な限り広げる") {
    // Spacer() は可能なだけの余白を確保する
    VStack {
        Image(.shop)
        Spacer()
        Text("shop")
    }
}

#Preview("Spacerで指定サイズの余白") {
    // Spacer() は可能なだけの余白を確保する
    VStack {
        Image(.shop)
        Spacer()
        Text("shop")
        Spacer().frame(height: 40)
        Text("2025/04/07")
    }
}
