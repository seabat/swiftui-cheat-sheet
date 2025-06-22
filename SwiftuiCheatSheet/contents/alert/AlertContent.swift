import SwiftUI

struct AlertContent: View {
    var body: some View {
        List {
            Section(header: Text("Alerts")) {
                NavigationLink(destination: AlertCheatSheet()) {
                    Text("Alert")
                }
            }
            
            Section(header: Text("Action Sheets")) {
                NavigationLink(destination: AlertCheatSheet()) {
                    Text("Alert")
                }
            }
        }
        .navigationTitle("Alert")
    }
}

#Preview {
    NavigationView {
        AlertContent()
    }
} 
