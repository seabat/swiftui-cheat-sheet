import SwiftUI

let sampleTabs: [TabData] = [
    TabData(
        title: "カスタム画像を表示",
        contentView: AnyView(
            Text("カスタム画像が表示されます。")
                .font(.largeTitle)
                .foregroundColor(.gray)
        ),
        codeView: AnyView(
            Text("カスタム画像表示のコード")
                .font(.body)
                .foregroundColor(.black)
        )
    ),
    TabData(
        title: "システム画像を表示",
        contentView: AnyView(
            VStack {
                Image(systemName: "photo.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                Text("システム画像が表示されます。")
            }
        ),
        codeView: AnyView(
            Text("システム画像表示のコード")
                .font(.body)
                .foregroundColor(.black)
        )
    ),
    TabData(
        title: "システム画像にスタイルを適用",
        contentView: AnyView(
            VStack {
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .symbolRenderingMode(.multicolor)
                Text("システム画像にスタイルが適用されます。")
            }
        ),
        codeView: AnyView(
            Text("システム画像表示のコード")
                .font(.body)
                .foregroundColor(.black)
        )
    ),
    TabData(
        title: "長めのタブタイトル例",
        contentView: AnyView(
            Text("これは長いタブタイトルのコンテンツです。")
                .font(.headline)
                .padding()
        ),
        codeView: AnyView(
            Text("長いタブタイトル表示のコード")
                .font(.body)
                .foregroundColor(.black)
        )
    ),
    TabData(
        title: "さらにもう一つ",
        contentView: AnyView(
            Rectangle()
                .fill(Color.orange.opacity(0.3))
                .frame(width: 150, height: 150)
                .overlay(Text("四角形コンテンツ"))
        ),
        codeView: AnyView(
            Text("四角形コンテンツ表示のコード")
                .font(.body)
                .foregroundColor(.black)
        )
    ),
    TabData(
        title: "最後のタブ",
        contentView: AnyView(
            Button("アクションボタン") {
                print("ボタンが押されました！")
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        ),
        codeView: AnyView(
            Text("アクションボタン表示のコード")
                .font(.body)
                .foregroundColor(.black)
        )
    )
]

struct TabBarScreen: View {
    let tabs: [TabData]

    @State private var selectedTab: TabData
    @State private var shouldShowContent: Bool = true

    init(allTabs: [TabData]) {
        self.tabs = allTabs
        _selectedTab = State(initialValue: allTabs[0])
    }

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                ScrollableTabBar(tabs: tabs, selectedTab: $selectedTab)
                Group {
                    if shouldShowContent {
                        selectedTab.contentView
                    } else {
                        selectedTab.codeView
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .transition(.opacity.animation(.easeInOut)) // コンテンツ切り替え時のアニメーション
            }
            .background(Color.secondary.opacity(0.1).ignoresSafeArea())
            
            Button(action: {
                shouldShowContent.toggle()
            }) {
                Image(systemName: shouldShowContent ? "1.circle.fill" : "2.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.accentColor)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            .padding(20)
        }
    }
}

#Preview {
    TabBarScreen(allTabs: sampleTabs)
}
