import SwiftUI

let tabs: [TabData] = [
    TabData(
        title: "背景",
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
        title: "フォント(定義済みプロパティ",
        contentView: AnyView(
            VStack {
                Text("largeTitle")
                    .font(.largeTitle)
                Text("title")
                    .font(.title)
                Text("headline")
                    .font(.headline)
                Text("subheadline")
                    .font(.subheadline)
                Text("body")
                    .font(.body)
                Text("callout")
                    .font(.callout)
                Text("footnote")
                    .font(.footnote)
                Text("caption")
                    .font(.caption)
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("largeTitle")
                    .font(.largeTitle)
                Text("title")
                    .font(.title)
                Text("headline")
                    .font(.headline)
                Text("subheadline")
                    .font(.subheadline)
                Text("body")
                    .font(.body)
                Text("callout")
                    .font(.callout)
                Text("footnote")
                    .font(.footnote)
                Text("caption")
                    .font(.caption)
            }
            """)
        )
    ),
    TabData(
        title: "余白(.bottom)",
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
        contentView: AnyView(
            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.horizontal).background(.pink)
                Text("3行目")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack {
                Text("1行目")
                Text("２行目")
                    .padding(.horizontal)
                Text("3行目")
            }
            """)
        )
    ),
    TabData(
        title: "余白(数値)",
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
        )
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
