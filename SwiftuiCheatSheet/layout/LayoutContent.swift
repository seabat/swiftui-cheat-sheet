import SwiftUI

struct LayoutContent: View {
    var body: some View {
        List {
            Section(header: Text("Basic")) {
                NavigationLink(destination: VStackCheatSheet()) {
                    Text("VStack")
                }
                NavigationLink(destination: HStackCheatSheet()) {
                    Text("HStack")
                }
                NavigationLink(destination: ZStackCheatSheet()) {
                    Text("ZStack")
                }
                NavigationLink(destination: LazyVStackCheatSheet()) {
                    Text("LazyVStack")
                }
                NavigationLink(destination: LazyHStackCheatSheet()) {
                    Text("LazyHStack")
                }
                NavigationLink(destination: LazyVGridCheatSheet()) {
                    Text("LazyVGrid")
                }
                NavigationLink(destination: LazyHGridCheatSheet()) {
                    Text("LazyHGrid")
                }
            }
            
            Section(header: Text("Sample")) {
                NavigationLink(destination: VStackCheatSheet()) {
                    Text("VStack")
                }
                NavigationLink(destination: HStackCheatSheet()) {
                    Text("HStack")
                }
                NavigationLink(destination: ZStackCheatSheet()) {
                    Text("ZStack")
                }
                NavigationLink(destination: LazyVStackCheatSheet()) {
                    Text("LazyVStack")
                }
                NavigationLink(destination: LazyHStackCheatSheet()) {
                    Text("LazyHStack")
                }
                NavigationLink(destination: LazyVGridCheatSheet()) {
                    Text("LazyVGrid")
                }
                NavigationLink(destination: LazyHGridCheatSheet()) {
                    Text("LazyHGrid")
                }
            }
        }
        .navigationTitle("Layout")
    }
}

#Preview {
    NavigationView {
        LayoutContent()
    }
} 
