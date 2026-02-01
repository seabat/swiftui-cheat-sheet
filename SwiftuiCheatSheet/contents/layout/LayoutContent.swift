import SwiftUI

struct LayoutContent: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("VStack") { path.append(.vStackCheatSheet) }
                Button("HStack") { path.append(.hStackCheatSheet) }
                Button("ZStack") { path.append(.zStackCheatSheet) }
                Button("LazyVStack") { path.append(.lazyVStackCheatSheet) }
                Button("LazyHStack") { path.append(.lazyHStackCheatSheet) }
                Button("LazyVGrid") { path.append(.lazyVGridCheatSheet) }
                Button("LazyHGrid") { path.append(.lazyHGridCheatSheet) }
            }

            Section(header: Text("Sample")) {
                Button("VStack") { path.append(.vStackCheatSheet) }
                Button("HStack") { path.append(.hStackCheatSheet) }
                Button("ZStack") { path.append(.zStackCheatSheet) }
                Button("LazyVStack") { path.append(.lazyVStackCheatSheet) }
                Button("LazyHStack") { path.append(.lazyHStackCheatSheet) }
                Button("LazyVGrid") { path.append(.lazyVGridCheatSheet) }
            }
        }
        .navigationTitle("Layout")
    }
}

#Preview {
    NavigationStack {
        LayoutContent(path: .constant([]))
    }
}
