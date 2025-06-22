import SwiftUI

struct TabButton: View {
    let tab: TabData
    @Binding var selectedTab: TabData

    var body: some View {
        Button(
            action: {
                selectedTab = tab
            }
        ) {
            HStack(spacing: 5) { // アイコンとテキストの間隔
                Image(systemName: "doc.text").font(.caption)
                Text(tab.title).font(.caption)
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 15)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .fill(selectedTab == tab ? Color.blue.opacity(0.2) : Color.white) // 選択状態による背景色
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(selectedTab == tab ? Color.blue : Color.gray.opacity(0.3), lineWidth: selectedTab == tab ? 2 : 1) // 選択状態による枠線
                    )
            )
            .foregroundColor(selectedTab == tab ? .blue : .primary) // 選択状態によるテキスト色
        }
        .buttonStyle(PlainButtonStyle()) // ボタンのデフォルトスタイルを解除してカスタムスタイルを適用
    }
}

#Preview("選択状態") {
    let tabData = TabData(
        title: "タブ1",
        content: AnyView(Text("Content 1"))
    )
    
    @State var selectedTab: TabData = tabData
    @Namespace var animation
    
    TabButton(
        tab: tabData,
        selectedTab: $selectedTab,
    )
}

#Preview("未選択状態") {
    let tabData1 = TabData(
        title: "タブ1",
        content: AnyView(Text("Content 1"))
    )
    let tabData2 = TabData(
        title: "タブ2",
        content: AnyView(Text("Content 2"))
    )

    @State var selectedTab: TabData = tabData1
    @Namespace var animation
    
    TabButton(
        tab: tabData2,
        selectedTab: $selectedTab,
    )
}

