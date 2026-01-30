import SwiftUI

struct ListContent: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("List Types")) {
                Button("List") { path.append(.listTypesList) }
                Button("ForEach") { path.append(.listTypesForEach) }
                Button("ScrollView") { path.append(.listTypesScrollView) }
            }

            Section(header: Text("List Features")) {
                Button("Sections") { path.append(.listFeaturesSections) }
                Button("Headers and Footers") { path.append(.listFeaturesHeadersAndFooters) }
                Button("List Styles") { path.append(.listFeaturesListStyles) }
            }
        }
        .navigationTitle("List")
    }
}

#Preview {
    NavigationStack {
        ListContent(path: .constant([]))
    }
}
