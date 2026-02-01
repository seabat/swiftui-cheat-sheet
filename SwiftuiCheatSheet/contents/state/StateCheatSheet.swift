import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "カウント",
        description: "状態 count をインクリメントして画面を更新する",
        contentView: AnyView(
            CountState()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            struct CountState: View {
                
                @State var count = 0
                var body: some View {
                    VStack {
                        Text("カウント: \\(count)")
                        Button(action: {
                            count += 1
                        }, label: {
                            Text("カウントアップ")
                        })
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "変更の連鎖",
        description: "選択中アイテム)selectedItem)の状態変化に応じて、表示有無(shouldShow)の状態を変化させる。",
        contentView: AnyView(
            ChangeChainState()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            struct ChangeChainState: View {
                private let correctAnswer = "3"
                let items: [String] = ["1", "2", "3", "4", "5"]

                @State private var selectedItem: String = "未選択"
                @State private var shouldShow: Bool = false

                var body: some View {
                    VStack {
                        if shouldShow {
                            Text("正解(\\(selectedItem))")
                                .font(.title2)
                                .padding()
                        }

                        ForEach(items, id: \\.self) { item in
                            Button {
                                selectedItem = item
                            } label: {
                                Text(item)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 32)
                                    .background(Color.accentColor)
                                    .foregroundColor(.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .onChange(of: selectedItem) { _, newValue in
                        shouldShow = (newValue == correctAnswer)
                    }
                }
            }
            """)
        )
    ),
]



struct StateCheatSheet: View {

    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    StateCheatSheet()
}
