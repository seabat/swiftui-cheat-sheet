import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "Text",
        description: "SwiftUI にはカードView が無いので自前でカードViewを用意し、コンテンツとして Text を配置する。",
        contentView: AnyView(
            Card(backgroundColor: Color.blue.opacity(0.08)) {
                Text("Card")
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SWiftUI
            
            Card(backgroundColor: Color.blue.opacity(0.08)) {
                Text("Card")
            }
            
            ~~~~~~~~~~~
            import SWiftUI
            
            struct Card<Content: View>: View {
                var padding: CGFloat = 16
                var cornerRadius: CGFloat = 12
                var shadowRadius: CGFloat = 5
                var backgroundColor: Color = Color(.systemBackground)
                @ViewBuilder let content: () -> Content

                var body: some View {
                    content()
                        .padding(padding)
                        .background(backgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                        // 影用の .background
                        .background(
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(Color(.systemBackground))
                                .shadow(
                                    color: Color.black.opacity(0.2),
                                    radius: shadowRadius,
                                    x: 0,
                                    y: 2
                                )
                        )
                }
            }
            """)
        )
    ),
    TabData(
        title: "VStack",
        description: "自前のカードViewに、コンテンツとしてタイトルとメッセージを持った VStack を配置する。",
        contentView: AnyView(
            Card(backgroundColor: Color.blue.opacity(0.08)) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("タイトル")
                        .font(.headline)
                    Text("メッセージ")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SWiftUI
            
            Card(backgroundColor: Color.blue.opacity(0.08)) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("タイトル")
                        .font(.headline)
                    Text("メッセージ")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            ~~~~~~~~~~~
            import SWiftUI
            
            struct Card<Content: View>: View {
                var padding: CGFloat = 16
                var cornerRadius: CGFloat = 12
                var shadowRadius: CGFloat = 5
                var backgroundColor: Color = Color(.systemBackground)
                @ViewBuilder let content: () -> Content

                var body: some View {
                    content()
                        .padding(padding)
                        .background(backgroundColor)
                        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                        // 影用の .background
                        .background(
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(Color(.systemBackground))
                                .shadow(
                                    color: Color.black.opacity(0.2),
                                    radius: shadowRadius,
                                    x: 0,
                                    y: 2
                                )
                        )
                }
            }
            """)
        )
    ),
]

struct CardCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    CardCheatSheet()
}

