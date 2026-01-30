import SwiftUI

struct AlertContent: View {
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
        AlertContent(path: .constant([]))
    }
}
