import SwiftUI

struct LayoutCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("基本")) {
                Button("VStack") { path.append(.vStackScreen) }
                Button("HStack") { path.append(.hStackScreen) }
                Button("ZStack") { path.append(.zStackScreen) }
                Button("LazyVStack") { path.append(.lazyVStackScreen) }
                Button("LazyHStack") { path.append(.lazyHStackScreen) }
                Button("LazyVGrid") { path.append(.lazyVGridScreen) }
                Button("LazyHGrid") { path.append(.lazyHGridScreen) }
            }
            Section(header: Text("組み合わせ")) {
                Button("VStack とよく一緒に使う View") { path.append(.vStackPatternScreen) }
            }
        }
        .navigationTitle("Layout")
    }
}

#Preview {
    NavigationStack {
        LayoutCategoryScreen(path: .constant([]))
    }
}
