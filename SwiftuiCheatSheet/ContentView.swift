import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ViewContent()) {
                    Text("View")
                }
                NavigationLink(destination: LayoutContent()) {
                    Text("Layout")
                }
                NavigationLink(destination: InputContent()) {
                    Text("Input")
                }
                NavigationLink(destination: ListContent()) {
                    Text("List")
                }
                NavigationLink(destination: ContainersContent()) {
                    Text("Containers")
                }
                NavigationLink(destination: AlertContent()) {
                    Text("Alert")
                }
                NavigationLink(destination: ActionSheetsContent()) {
                    Text("Action Sheets")
                }
                NavigationLink(destination: NavigationContent()) {
                    Text("Navigation")
                }
                NavigationLink(destination: StateCheatSheet()) {
                    Text("State")
                }
                NavigationLink(destination: ExtentionCheatSheet()) {
                    Text("Extention")
                }
            }
            .navigationTitle("Table of Contents")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
