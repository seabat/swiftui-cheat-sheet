import SwiftUI

struct NavigationContent: View {
    var body: some View {
        List {
            Section(header: Text("Basii")) {
                NavigationLink(destination: NavigationCheatSheet()) {
                    Text("Navigation")
                }
            }
            
            Section(header: Text("Sample")) {
                NavigationLink(destination: NavigationCheatSheet()) {
                    Text("Navigation")
                }
            }
        }
        .navigationTitle("Navigation")
    }
}

#Preview {
    NavigationView {
        NavigationContent()
    }
} 
