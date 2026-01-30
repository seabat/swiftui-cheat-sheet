import SwiftUI

struct NavigationContent: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("Navigation") { path.append(.navigationCheatSheet) }
            }

            Section(header: Text("Sample")) {
                Button("Navigation") { path.append(.navigationCheatSheet) }
            }
        }
        .navigationTitle("Navigation")
    }
}

#Preview {
    NavigationStack {
        NavigationContent(path: .constant([]))
    }
}
