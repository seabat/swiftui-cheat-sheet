import SwiftUI

fileprivate struct ViewItem {
    let title: String
    let icon: String
    let color: Color
    let description: String
    let destination: Destination
}

fileprivate struct ViewRow: View {
    let item: ViewItem

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: item.icon)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
                .frame(width: 36, height: 36)
                .background(item.color.gradient)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading, spacing: 2) {
                Text(item.title)
                    .font(.headline)
                    .foregroundStyle(.primary)
                Text(item.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 4)
        .frame(maxWidth: .infinity, alignment: .leading)
        .contentShape(Rectangle())
    }
}

private let officialItems: [ViewItem] = [
    ViewItem(title: "Text",         icon: "textformat",          color: .blue,   description: "文字列を表示する",       destination: .textCheatSheet),
    ViewItem(title: "Label",        icon: "tag",                 color: .green,  description: "アイコン付きテキスト",    destination: .labelCheatSheet),
    ViewItem(title: "TextEditor",   icon: "square.and.pencil",   color: .orange, description: "複数行テキスト入力",      destination: .textEditorCheatSheet),
    ViewItem(title: "Image",        icon: "photo",               color: .purple, description: "画像を表示する",         destination: .imageCheatSheet),
    ViewItem(title: "Shape",        icon: "square.on.circle",    color: .red,    description: "図形を描画する",         destination: .shapeCheatSheet),
    ViewItem(title: "ProgressView", icon: "progress.indicator",  color: .teal,   description: "進捗インジケーター",      destination: .progressViewCheatSheet),
    ViewItem(title: "Map",          icon: "map",                 color: .indigo, description: "地図を表示する",         destination: .mapCheatSheet),
]

private let customItems: [ViewItem] = [
    ViewItem(title: "Card",         icon: "rectangle.portrait",  color: .pink,   description: "カードスタイルの View",   destination: .cardCheatSheet),
    ViewItem(title: "Image",        icon: "photo.artframe",      color: .brown,  description: "カスタム画像表示",        destination: .labelCheatSheet),
    ViewItem(title: "TextEditor",   icon: "pencil.and.outline",  color: .mint,   description: "カスタムテキスト編集",    destination: .textEditorCheatSheet),
    ViewItem(title: "Image",        icon: "scissors",            color: .cyan,   description: "画像の切り抜き",          destination: .imageCheatSheet),
    ViewItem(title: "Shape",        icon: "hexagon",             color: .yellow, description: "カスタム図形",            destination: .shapeCheatSheet),
    ViewItem(title: "ProgressView", icon: "chart.bar",           color: .orange, description: "カスタム進捗表示",        destination: .progressViewCheatSheet),
    ViewItem(title: "Map",          icon: "map.fill",            color: .green,  description: "カスタムマップ表示",      destination: .mapCheatSheet),
]

struct ViewScreen: View {
    @Environment(\.dismiss) var dismiss
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("公式 View")) {
                ForEach(officialItems, id: \.title) { item in
                    Button { path.append(item.destination) } label: {
                        ViewRow(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
            Section(header: Text("カスタム View")) {
                ForEach(customItems, id: \.title) { item in
                    Button { path.append(item.destination) } label: {
                        ViewRow(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .navigationTitle("View")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("戻る")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ViewScreen(path: .constant([]))
    }
}
