import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "幅固定",
        description: "LazyVGrid を3列で表示する。列の幅は100ptで固定する。",
        contentView: AnyView(
            FixedVGrid()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            struct FixedVGrid: View {
                
                // 列数と幅の取り方を設定
                let columns = [
                    GridItem(.fixed(100)), // .fixed(100) は 列幅を 100pt で固定する
                    GridItem(.fixed(100)),
                    GridItem(.fixed(100))
                ]
                
                var body: some View {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 2) {
                            ForEach(0..<6, id: \\.self) { _ in
                                Image(.pancakeSquare)
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        .background(Color.gray.opacity(0.2))
                        .padding(10)
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "幅フレキシブル",
        description: "LazyVGrid を3列で表示する。列の幅は可能な限り広げる。",
        contentView: AnyView(
            FlexibleVGrid()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            struct FlexibleVGrid: View {
                
                // 列数と幅の取り方を設定
                let columns = [
                    GridItem(.flexible()), // .flexible() は 列の幅を可能な限り広げる
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]
                
                var body: some View {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 2) {
                            ForEach(0..<6, id: \\.self) { _ in
                                Image(.pancakeSquare)
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        .padding(10)
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "幅自動調整",
        description: "LazyVGrid を列幅最低 80pt で列数はできるだけ表示する。",
        contentView: AnyView(
            AdaptiveVGrid()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            struct AdaptiveVGrid: View {
                
                // .adaptive(minimum: 80) は 列幅を最低 80pt にし、列数を自動にする
                let columns = [GridItem(.adaptive(minimum: 80))]
                
                var body: some View {
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 2) {
                            ForEach(0..<10, id: \\.self) { _ in
                                Image(.pancakeSquare)
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        .padding(10)
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "AsyncImage",
        description: "AsyncImage を LazyVGrid で表示する",
        contentView: AnyView(
            AsyncImageVGrid()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            struct AsyncImageGrid: View {
                @State private var shouldShowGrid = false

                let images = Array(0...11)
                let columns = [
                    GridItem(.flexible()),
                    GridItem(.flexible()),
                    GridItem(.flexible())
                ]

                var body: some View {
                    VStack(spacing: 16) {
                        if shouldShowGrid {
                            ScrollView {
                                LazyVGrid(columns: columns, spacing: 2) {
                                    // NOTE: ForEach の第２引数 id: \\.self は 配列の要素をそのまま id として使ってよい場合に指定する
                                    ForEach(images, id: \\.self) { item in
                                        AsyncImage(url: URL(string: "https://picsum.photos/200?random=\\(item)")) { phase in
                                            if let image = phase.image {
                                                image
                                                    .resizable()
                                                    .scaledToFill()
                                            } else if phase.error != nil {
                                                Color.gray
                                            } else {
                                                Color.gray.opacity(0.3)
                                            }
                                        }
                                        .frame(minHeight: 120)
                                        .clipped()
                                    }
                                }
                            }
                        } else {
                            Button("グリッドを表示") {
                                shouldShowGrid = true
                            }
                        }
                    }
                }
            }
            """)
        )
    ),
]



struct LazyVGridCheatSheet: View {

    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    LazyVGridCheatSheet()
}
