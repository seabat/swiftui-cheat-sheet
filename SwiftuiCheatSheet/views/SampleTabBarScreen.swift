import SwiftUI

struct SampleTabBarScreen: View {
    let tabs: [TabData]

    @State private var selectedTab: TabData

    init() {
        let allTabs: [TabData] = [
            TabData(
                title: "カスタム画像を表示",
                content: AnyView(
                    Text("カスタム画像が表示されます。")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                )
            ),
            TabData(
                title: "システム画像を表示",
                content: AnyView(
                    VStack {
                        Image(systemName: "photo.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .foregroundColor(.blue)
                        Text("システム画像が表示されます。")
                    }
                )
            ),
            TabData(
                title: "システム画像にスタイルを適用",
                content: AnyView(
                    VStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .symbolRenderingMode(.multicolor)
                        Text("システム画像にスタイルが適用されます。")
                    }
                )
            ),
            TabData(
                title: "長めのタブタイトル例",
                content: AnyView(
                    Text("これは長いタブタイトルのコンテンツです。")
                        .font(.headline)
                        .padding()
                )
            ),
            TabData(
                title: "さらにもう一つ",
                content: AnyView(
                    Rectangle()
                        .fill(Color.orange.opacity(0.3))
                        .frame(width: 150, height: 150)
                        .overlay(Text("四角形コンテンツ"))
                )
            ),
            TabData(
                title: "最後のタブ",
                content: AnyView(
                    Button("アクションボタン") {
                        print("ボタンが押されました！")
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                )
            )
        ]
        
        self.tabs = allTabs // init() で定数を初期化
        _selectedTab = State(initialValue: allTabs[0])
    }

    var body: some View {
        VStack {
            ScrollableTabBar(tabs: tabs, selectedTab: $selectedTab)
            Group {
                selectedTab.content
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .transition(.opacity.animation(.easeInOut)) // コンテンツ切り替え時のアニメーション
        }
        .background(Color.secondary.opacity(0.1).ignoresSafeArea())
    }
}

#Preview {
    SampleTabBarScreen()
}



