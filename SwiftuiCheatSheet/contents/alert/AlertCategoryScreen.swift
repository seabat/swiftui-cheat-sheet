import SwiftUI

struct AlertCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Alerts")) {
                Button("Alert") { path.append(.alertDetailScreen) }
            }
        }
        .navigationTitle("Alert")
    }
}

#Preview {
    NavigationStack {
        AlertCategoryScreen(path: .constant([]))
    }
}
