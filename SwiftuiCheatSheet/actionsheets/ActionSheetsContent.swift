import SwiftUI

struct ActionSheetsContent: View {
    var body: some View {
        List {
            Section(header: Text("Basic")) {
                NavigationLink(destination: ActionSheetsCheatSheet()) {
                    Text("ActionSheets")
                }
            }
            
            Section(header: Text("Sample")) {
                NavigationLink(destination: ActionSheetsCheatSheet()) {
                    Text("ActionSheets")
                }
            }
        }
        .navigationTitle("ActionSheets")
    }
}

#Preview {
    NavigationView {
        ActionSheetsContent()
    }
}
