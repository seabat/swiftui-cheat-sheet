import SwiftUI

struct AlertScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Alerts")) {
                Button("Alert") { path.append(.alertCheatSheet) }
            }

            Section(header: Text("Action Sheets")) {
                Button("Alert") { path.append(.alertCheatSheet) }
            }
        }
        .navigationTitle("Alert")
    }
}

#Preview {
    NavigationStack {
        AlertScreen(path: .constant([]))
    }
}
