import SwiftUI

struct ScrollableTabBar: View {
    let tabs: [TabData]
    @Binding var selectedTab: TabData

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(tabs) { tab in
                        TabButton(tab: tab, selectedTab: $selectedTab)
                            .id(tab.id)
                    }
                }
                .padding(.horizontal)
                .onChange(of: selectedTab) { newTab in
                    proxy.scrollTo(newTab.id, anchor: .center)
                }
            }
        }
        .frame(height: 60)
        .background(Color.blue.opacity(0.07))
    }
}

#Preview {
    let sampleTabs: [TabData] = [
        TabData(title: "タブ1", content: AnyView(Text("Content 1"))),
        TabData(title: "長いタブタイトル2", content: AnyView(Text("Content 2"))),
        TabData(title: "タブ3", content: AnyView(Text("Content 3"))),
        TabData(title: "さらにタブ4", content: AnyView(Text("Content 4"))),
        TabData(title: "最後のタブ5", content: AnyView(Text("Content 5"))),
        TabData(title: "タブ6", content: AnyView(Text("Content 6"))),
        TabData(title: "タブ7", content: AnyView(Text("Content 7")))
    ]

    // @State を使用して selectedTab の状態をシミュレート
    @State var selectedTabInPreview: TabData = sampleTabs[0]
    @Namespace var previewAnimation

    ScrollableTabBar(
        tabs: sampleTabs,
        selectedTab: $selectedTabInPreview
    )
    .padding(.vertical, 35) // ScrollableTabBar の周囲に余白を付けて見やすくする
    .background(Color.gray.opacity(0.1).ignoresSafeArea()) //背景色
}

