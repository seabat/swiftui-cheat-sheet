import SwiftUI

struct ListCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("List Types")) {
                Button("List") { path.append(.listDetailScreen) }
                Button("ForEach") { path.append(.listForEachScreen) }
                Button("ScrollView") { path.append(.listcrollViewScreen) }
            }

            Section(header: Text("List Features")) {
                Button("Sections") { path.append(.listSectionsScreen) }
                Button("Headers and Footers") { path.append(.listHeadersAndFootersScreen) }
                Button("List Styles") { path.append(.listListStylesScreen) }
            }
        }
        .navigationTitle("List")
    }
}

#Preview {
    NavigationStack {
        ListCategoryScreen(path: .constant([]))
    }
}
