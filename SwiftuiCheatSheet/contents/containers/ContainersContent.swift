import SwiftUI

struct ContainersContent: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("NavigationView") { path.append(.navigationViewCheatSheet) }
                Button("TabView") { path.append(.tabViewCheatSheet) }
            }

            Section(header: Text("Sample")) {
                Button("NavigationView") { path.append(.navigationViewCheatSheet) }
                Button("TabView") { path.append(.tabViewCheatSheet) }
            }
        }
        .navigationTitle("Containers")
    }
}

#Preview {
    NavigationStack {
        ContainersContent(path: .constant([]))
    }
}
