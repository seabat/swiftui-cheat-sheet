import SwiftUI

struct LayoutCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("VStack") { path.append(.vStackScreen) }
                Button("HStack") { path.append(.hStackScreen) }
                Button("ZStack") { path.append(.zStackScreen) }
                Button("LazyVStack") { path.append(.lazyVStackScreen) }
                Button("LazyHStack") { path.append(.lazyHStackScreen) }
                Button("LazyVGrid") { path.append(.lazyVGridScreen) }
                Button("LazyHGrid") { path.append(.lazyHGridScreen) }
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
