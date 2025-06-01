import SwiftUI

struct ListContent: View {
    var body: some View {
        List {
            Section(header: Text("List Types")) {
                NavigationLink(destination: Text("List")) {
                    Text("List")
                }
                NavigationLink(destination: Text("ForEach")) {
                    Text("ForEach")
                }
                NavigationLink(destination: Text("ScrollView")) {
                    Text("ScrollView")
                }
            }
            
            Section(header: Text("List Features")) {
                NavigationLink(destination: Text("Sections")) {
                    Text("Sections")
                }
                NavigationLink(destination: Text("Headers and Footers")) {
                    Text("Headers and Footers")
                }
                NavigationLink(destination: Text("List Styles")) {
                    Text("List Styles")
                }
            }
        }
        .navigationTitle("List")
    }
}

#Preview {
    NavigationView {
        ListContent()
    }
} 