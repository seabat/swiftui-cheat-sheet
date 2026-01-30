import SwiftUI

struct ActionSheetsContent: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("ActionSheets") { path.append(.actionSheetsCheatSheet) }
            }

            Section(header: Text("Sample")) {
                Button("ActionSheets") { path.append(.actionSheetsCheatSheet) }
            }
        }
        .navigationTitle("ActionSheets")
    }
}

#Preview {
    NavigationStack {
        ActionSheetsContent(path: .constant([]))
    }
}
