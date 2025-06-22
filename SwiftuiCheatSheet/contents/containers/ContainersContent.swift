import SwiftUI

struct ContainersContent: View {
    var body: some View {
        List {
            Section(header: Text("Basic")) {
                NavigationLink(destination: NavigationViewCheatSheet()) {
                    Text("NavigationView")
                }
                NavigationLink(destination: TabViewCheatSheet()) {
                    Text("TabView")
                }
            }
            
            Section(header: Text("Sample")) {
                NavigationLink(destination: NavigationViewCheatSheet()) {
                    Text("NavigationView")
                }
                NavigationLink(destination: TabViewCheatSheet()) {
                    Text("TabView")
                }
            }
        }
        .navigationTitle("Containers")
    }
}

#Preview {
    NavigationView {
        ContainersContent()
    }
} 
