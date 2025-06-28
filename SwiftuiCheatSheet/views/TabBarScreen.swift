import SwiftUI

private let tabs: [TabData] = [
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
            VStack(
                spacing: 0 // デフォルトのスペース(8pt)を削除する
            ) {
                ScrollableTabBar(tabs: tabs, selectedTab: $selectedTab)
                Group {
                    if shouldShowContent {
                        selectedTab.contentView
                    } else {
                        selectedTab.codeView
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
                .background(Color.white)
                .transition(.opacity.animation(.easeInOut)) // コンテンツ切り替え時のアニメーション
            }
            
            Button(action: {
                shouldShowContent.toggle()
            }) {
                HStack(spacing: 8) {
                    Image(systemName: shouldShowContent ? "doc.text" : "eye")
                        .font(.system(size: 16, weight: .medium))
                    Text(shouldShowContent ? "コード" : "プレビュー")
                        .font(.system(size: 14, weight: .medium))
                }
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(
                    LinearGradient(
                        colors: [Color.accentColor, Color.accentColor.opacity(0.8)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                .scaleEffect(shouldShowContent ? 1.0 : 1.0)
                .animation(.spring(response: 0.3, dampingFraction: 0.7), value: shouldShowContent)
            }
            .padding(20)
        }
    }
}

#Preview {
    TabBarScreen(allTabs: tabs)
}
