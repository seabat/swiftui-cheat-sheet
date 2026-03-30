import SwiftUI

struct ActionSheetsCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("ActionSheets") { path.append(.actionSheetsDetailScreen) }
            }
        }
        .navigationTitle("ActionSheets")
    }
}

#Preview {
    NavigationStack {
        ActionSheetsCategoryScreen(path: .constant([]))
    }
}
