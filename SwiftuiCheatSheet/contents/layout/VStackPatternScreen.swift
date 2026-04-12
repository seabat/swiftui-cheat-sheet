import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "Spacerの基本",
        description: "VStack 内で Spacer() を使って残りのスペースを埋め、要素を端に寄せる。",
        contentView: AnyView(
            VStack {
                Text("上部")
                Spacer()
                Text("下部")
            }
            .frame(width: 120, height: 120)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("上部")
                        Spacer()  // 残りのスペースをすべて占有
                        Text("下部")
                    }
                    .frame(height: 200)
                    .background(Color.red.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "複数のSpacer",
        description: "複数の Spacer() を配置すると各 Spacer が均等にスペースを分け合う。",
        contentView: AnyView(
            VStack {
                Text("上部")
                Spacer()
                Text("中部")
                Spacer()
                Text("下部")
            }
            .frame(width: 120, height: 120)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("上部")
                        Spacer()    // 均等に分配
                        Text("中部")
                        Spacer()    // 均等に分配
                        Text("下部")
                    }
                    .frame(height: 200)
                    .background(Color.red.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "Dividerの基本",
        description: "VStack 内に水平方向の区切り線を表示する。",
        contentView: AnyView(
            VStack {
                Text("セクション A")
                Divider()
                Text("セクション B")
                Divider()
                Text("セクション C")
            }
            .padding()
            .frame(width: 200)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("セクション A")
                        Divider()
                        Text("セクション B")
                        Divider()
                        Text("セクション C")
                    }
                    .padding()
                    .background(Color.red.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "色付き区切り線",
        description: "Rectangle を使って色付きの区切り線を作る。Divider の色は直接変更できないため代替として使う。",
        contentView: AnyView(
            VStack(spacing: 12) {
                Text("セクション A")
                Rectangle()
                    .fill(Color("Primary"))
                    .frame(height: 1)
                Text("セクション B")
            }
            .padding()
            .frame(width: 200)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack(spacing: 12) {
                        Text("セクション A")
                        Rectangle()
                            .fill(.blue)
                            .frame(height: 1)   // 高さ 1pt の区切り線
                        Text("セクション B")
                    }
                    .padding()
                    .background(Color.red.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "ScrollView + VStack",
        description: "コンテンツが画面の高さを超えるとき、ScrollView で縦スクロールを実現する。",
        contentView: AnyView(
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(1...10, id: \.self) { i in
                        Text("アイテム \(i)")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 8)
                            .background(Color("DemoRed"))
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 150)
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    ScrollView {    // デフォルトは縦スクロール
                        VStack(spacing: 8) {
                            ForEach(1...20, id: \\.self) { i in
                                Text("アイテム \\(i)")
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 8)
                                    .background(Color.red.opacity(0.15))
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            """
    ),
    TabData(
        title: "スクロールバー非表示",
        description: "スクロールバーを非表示にしてコンテンツだけをスクロールさせる。",
        contentView: AnyView(
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(1...10, id: \.self) { i in
                        Text("アイテム \(i)")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 8)
                            .background(Color("DemoRed"))
                    }
                }
                .padding(.horizontal)
            }
            .scrollIndicators(.hidden)
            .frame(height: 150)
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    ScrollView {
                        VStack(spacing: 8) {
                            ForEach(1...20, id: \\.self) { i in
                                Text("アイテム \\(i)")
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 8)
                                    .background(Color.red.opacity(0.15))
                            }
                        }
                        .padding(.horizontal)
                    }
                    .scrollIndicators(.hidden)  // iOS 16+
                    // 旧: ScrollView(showsIndicators: false) { ... }
                }
            }
            """
    ),
]

struct VStackPatternScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    VStackPatternScreen()
}
