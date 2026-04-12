import SwiftUI

fileprivate struct LayoutItem {
    let title: String
    let icon: String
    let color: Color
    let description: String
    let destination: Destination
}

fileprivate struct LayoutRow: View {
    let item: LayoutItem

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

private let basicItems: [LayoutItem] = [
    LayoutItem(title: "VStack",      icon: "square.split.1x2",        color: .blue,   description: "縦に View を並べる",           destination: .vStackScreen),
    LayoutItem(title: "HStack",      icon: "square.split.2x1",        color: .green,  description: "横に View を並べる",           destination: .hStackScreen),
    LayoutItem(title: "ZStack",      icon: "square.on.square",         color: .orange, description: "View を重ねて表示する",         destination: .zStackScreen),
    LayoutItem(title: "LazyVStack",  icon: "list.bullet",              color: .purple, description: "スクロール向けの縦スタック",     destination: .lazyVStackScreen),
    LayoutItem(title: "LazyHStack",  icon: "line.horizontal.3",        color: .red,    description: "スクロール向けの横スタック",     destination: .lazyHStackScreen),
    LayoutItem(title: "LazyVGrid",   icon: "square.grid.2x2",          color: .teal,   description: "縦グリッドレイアウト",          destination: .lazyVGridScreen),
    LayoutItem(title: "LazyHGrid",   icon: "rectangle.grid.1x2",       color: .indigo, description: "横グリッドレイアウト",          destination: .lazyHGridScreen),
]

private let comboItems: [LayoutItem] = [
    LayoutItem(title: "VStack とよく一緒に使う View", icon: "rectangle.3.group", color: .mint, description: "Spacer・Divider・ScrollView との組み合わせ", destination: .vStackPatternScreen),
]

struct LayoutCategoryScreen: View {
    @Environment(\.dismiss) var dismiss
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("基本")) {
                ForEach(basicItems, id: \.title) { item in
                    Button { path.append(item.destination) } label: {
                        LayoutRow(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
            Section(header: Text("組み合わせ")) {
                ForEach(comboItems, id: \.title) { item in
                    Button { path.append(item.destination) } label: {
                        LayoutRow(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .navigationTitle("Layout")
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
        LayoutCategoryScreen(path: .constant([]))
    }
}
