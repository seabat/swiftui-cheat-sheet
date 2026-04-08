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
        .background(Color("Secondary").opacity(0.07))
    }
}

#Preview {
    let sampleTabs: [TabData] = [
        TabData(title: "タブ1", description: "", contentView: AnyView(Text("Content 1")), code: ""),
        TabData(title: "長いタブタイトル2", description: "", contentView: AnyView(Text("Content 2")), code: ""),
        TabData(title: "タブ3", description: "", contentView: AnyView(Text("Content 3")), code: ""),
        TabData(title: "さらにタブ4", description: "", contentView: AnyView(Text("Content 4")), code: ""),
        TabData(title: "最後のタブ5", description: "", contentView: AnyView(Text("Content 5")), code: ""),
        TabData(title: "タブ6", description: "", contentView: AnyView(Text("Content 6")), code: ""),
        TabData(title: "タブ7", description: "", contentView: AnyView(Text("Content 7")), code: "")
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

