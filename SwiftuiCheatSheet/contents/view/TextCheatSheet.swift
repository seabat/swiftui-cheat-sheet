import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景",
        description: "テキストに背景色を付ける。",
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
        title: "高さ指定",
        description: "テキストの高さを指定する。",
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
        description: "テキストに色を付ける。背景色も付ける。",
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
        title: "フォント(定義済みプロパティ)",
        description: "テキストにシステム定義のフォントを指定する。",
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
        title: "太さ(定義済みプロパティ)",
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
        title: "余白(.bottom)",
        description: "テキストの下に padding を指定。",
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目").padding(.bottom)
                Text("3行目")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.bottom)
                Text("3行目")
            }
            """)
        )
    ),
    TabData(
        title: "余白(.vertical)",
        description: "テキストの上下に padding を指定。",
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目").padding(.vertical)
                Text("3行目")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.vertical)
                Text("3行目")
            }
            """)
        )
    ),
    TabData(
        title: "余白(.horizontal)",
        description: "テキストの両端に padding を指定。",
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.horizontal).background(.pink)
                Text("3行目")
                    .background(.blue).padding(.horizontal)
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.horizontal).background(.pink)
                Text("3行目")
                    .background(.blue).padding(.horizontal)
            }
            """)
        )
    ),
    TabData(
        title: "余白(数値)",
        description: "テキストの上、下、右、左に padding を指定。",
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目")
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

struct TextCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    TextCheatSheet()
}
