import SwiftUI

struct ContainersCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("NavigationView") { path.append(.navigationViewScreen) }
                Button("TabView") { path.append(.tabViewScreen) }
            }
        }
        .navigationTitle("Containers")
    }
}

#Preview {
    NavigationStack {
        ContainersCategoryScreen(path: .constant([]))
    }
}
