import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景",
        description: "テキストにピンク色の背景色を付ける。",
        contentView: AnyView(
            Text("背景")
                .background(.pink)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Text("背景")
                .background(.pink)
            """)
        )
    ),
    TabData(
        title: "横幅MAX",
        description: "テキスト表示領域を横幅いっぱいに広げる。",
        contentView: AnyView(
            Text("じゃんけんをする")
                .frame(maxWidth: .infinity)
                .background(.pink)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Text("じゃんけんをする")
                .frame(maxWidth: .infinity)
                .background(.pink)
            """)
        )
    ),
    TabData(
        title: "高さ",
        description: "テキストに高さ 100 pt を指定する。",
        contentView: AnyView(
            Text("高さ指定")
                .frame(height: 100)
                .background(.pink)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Text("高さ指定")
                .frame(height: 100)
                .background(.pink)
            """)
        )
    ),
    TabData(
        title: "テキストの色",
        description: "テキストの色を白にする。",
        contentView: AnyView(
            Text("テキストの色")
                .foregroundColor(.white)
                .background(.pink)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Text("テキストの色")
                .foregroundColor(.white)
                .background(.pink)
            """)
        )
    ),
    TabData(
        title: "大きさ",
        description: "テキストに大きさのシステム定義を指定する。",
        contentView: AnyView(
            VStack {
                // CSS 34pt
                Text("largeTitle")
                    .font(.largeTitle)
                // CSS 28pt
                Text("title")
                    .font(.title)
                // CSS 17pt
                Text("headline")
                    .font(.headline)
                // CSS 17pt
                Text("body")
                    .font(.body)
                // CSS 16pt
                Text("callout")
                    .font(.callout)
                // CSS 15pt
                Text("subheadline")
                    .font(.subheadline)
                // CSS 13pt
                Text("footnote")
                    .font(.footnote)
                // CSS 12pt
                Text("caption")
                    .font(.caption)
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            // iOSでは、1ポイント（pt）は1/72インチと定義されており、
            // 多くのiOSデバイスでは、1ポイントは1ピクセルにマッピングされる

            VStack {
                // CSS 34pt
                Text("largeTitle")
                    .font(.largeTitle)
                // CSS 28pt
                Text("title")
                    .font(.title)
                // CSS 17pt
                Text("headline")
                    .font(.headline)
                // CSS 17pt
                Text("body")
                    .font(.body)
                // CSS 16pt
                Text("callout")
                    .font(.callout)
                // CSS 15pt
                Text("subheadline")
                    .font(.subheadline)
                // CSS 13pt
                Text("footnote")
                    .font(.footnote)
                // CSS 12pt
                Text("caption")
                    .font(.caption)
            }
            """)
        )
    ),
    TabData(
        title: "太さ",
        description: "テキストの太さの定義を適用",
        contentView: AnyView(
            VStack {
                // CSSのfont-weight 900
                Text("heavy")
                    .fontWeight(.heavy)
                // CSSのfont-weight 700
                Text("bold")
                    .fontWeight(.bold)
                // CSSのfont-weight 600
                Text("semibold")
                    .fontWeight(.semibold)
                // CSSのfont-weight 500
                Text("medium")
                    .fontWeight(.medium)
                // CSSのfont-weight 400
                Text("regular")
                    .fontWeight(.regular)
                // CSSのfont-weight 300
                Text("light")
                    .fontWeight(.light)
                // CSSのfont-weight 100
                Text("thin")
                    .fontWeight(.thin)
                Text("ultraLight")
                    .fontWeight(.ultraLight)
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                // CSSのfont-weight 900
                Text("heavy")
                    .fontWeight(.heavy)
                // CSSのfont-weight 700
                Text("bold")
                    .fontWeight(.bold)
                // CSSのfont-weight 600
                Text("semibold")
                    .fontWeight(.semibold)
                // CSSのfont-weight 500
                Text("medium")
                    .fontWeight(.medium)
                // CSSのfont-weight 400
                Text("regular")
                    .fontWeight(.regular)
                // CSSのfont-weight 300
                Text("light")
                    .fontWeight(.light)
                // CSSのfont-weight 100
                Text("thin")
                    .fontWeight(.thin)
                Text("ultraLight")
                    .fontWeight(.ultraLight)
            }
            """)
        )
    ),
    TabData(
        title: "余白(下)",
        description: "テキストの下に padding を指定。",
        contentView: AnyView(
            VStack {
                Text("１行目")
                    .background(.pink)
                    .padding(.bottom)
                Text("２行目")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("１行目")
                    .background(.pink)
                    .padding(.bottom)
                Text("２行目")
            }
            """)
        )
    ),
    TabData(
        title: "余白(上下)",
        description: "テキストの上下に padding を指定。",
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目")
                    .background(.pink)
                    .padding(.vertical)
                Text("3行目")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .background(.pink)
                    .padding(.vertical)
                Text("3行目")
            }
            """)
        )
    ),
    TabData(
        title: "余白(両端)",
        description: "テキストの両端に padding を指定。\"１行目\"には内側に padding。\"２行目\"には外側に padding。",
        contentView: AnyView(
            VStack {
                Text("１行目")
                    .padding(.horizontal)
                    .background(.pink)
                Text("２行目")
                    .background(.blue)
                    .padding(.horizontal)
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.horizontal)
                    .background(.pink)
                Text("3行目")
                    .background(.blue)
                    .padding(.horizontal)
            }
            """)
        )
    ),
    TabData(
        title: "余白(数値)",
        description: "テキストに上:0pt、下:16pt、右:0pt、左:0ptの padding を指定。",
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目")
                    .background(.pink)
                    .padding(
                        EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 16,
                            trailing: 0
                        )
                    )
                Text("3行目")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .background(.pink)
                    .padding(
                        EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 16,
                            trailing: 0
                        )
                    )
                Text("3行目")
            }
            """)
        ),
    ),
    TabData(
        title: "形状",
        description: "カプセル型、円型の背景を持つテキスト。",
        contentView: AnyView(
            VStack {
                Text("形状(カプセル)")
                    .background(.pink)
                    .clipShape(Capsule())
                Text("形状(円)")
                    .background(.yellow)
                    .clipShape(Circle())
                Text("形状(円)")
                    .frame(width: 100, height: 100)
                    .background(.yellow)
                    .clipShape(Circle())
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("形状(カプセル)")
                    .background(.pink)
                    .clipShape(Capsule())
                Text("形状(円)")
                    .background(.yellow)
                    .clipShape(Circle())
                Text("形状(円)")
                    .frame(width: 100, height: 100)
                    .background(.yellow)
                    .clipShape(Circle())
            }
            """)
        ),
    ),
]

struct TextScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    TextScreen()
}
