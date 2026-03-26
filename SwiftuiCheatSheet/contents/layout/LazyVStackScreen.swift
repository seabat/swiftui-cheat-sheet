import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "準備中",
        description: "準備中",
        contentView: AnyView(
            AsyncTabView()
        ),
        code: ""
    ),
]

struct LazyVStackScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    LazyVStackScreen()
}
