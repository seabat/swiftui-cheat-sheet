import SwiftUI

struct ViewContent: View {
    @Environment(\.dismiss) var dismiss
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("公式 View")) {
                Button("Text") { path.append(.textCheatSheet) }
                Button("Label") { path.append(.labelCheatSheet) }
                Button("TextEditor") { path.append(.textEditorCheatSheet) }
                Button("Image") { path.append(.imageCheatSheet) }
                Button("Shape") { path.append(.shapeCheatSheet) }
                Button("ProgressView") { path.append(.progressViewCheatSheet) }
                Button("Map") { path.append(.mapCheatSheet) }
            }

            Section(header: Text("カスタム View")) {
                Button("Card") { path.append(.cardCheatSheet) }
                Button("Image") { path.append(.labelCheatSheet) }
                Button("TextEditor") { path.append(.textEditorCheatSheet) }
                Button("Image") { path.append(.imageCheatSheet) }
                Button("Shape") { path.append(.shapeCheatSheet) }
                Button("ProgressView") { path.append(.progressViewCheatSheet) }
                Button("Map") { path.append(.mapCheatSheet) }
            }
        }
        .navigationTitle("View")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        Text("戻る")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ViewContent(path: .constant([]))
    }
}
