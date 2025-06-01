import SwiftUI

struct ViewContent: View {
    var body: some View {
        List {
            Section(header: Text("Basic")) {
                NavigationLink(destination: TextCheatSheet()) {
                    Text("Text")
                }
                NavigationLink(destination: LabelCheatSheet()) {
                    Text("Image")
                }
                NavigationLink(destination: TextEditorCheatSheet()) {
                    Text("TextEditor")
                }
                NavigationLink(destination: ImageCheatSheet()) {
                    Text("Image")
                }
                NavigationLink(destination: ShapeCheatSheet()) {
                    Text("Shape")
                }
                NavigationLink(destination: ProgressViewCheatSheet()) {
                    Text("ProgressView")
                }
                NavigationLink(destination: MapCheatSheet()) {
                    Text("Map")
                }
            }
            
            Section(header: Text("Sample")) {
                NavigationLink(destination: TextCheatSheet()) {
                    Text("Text")
                }
                NavigationLink(destination: LabelCheatSheet()) {
                    Text("Image")
                }
                NavigationLink(destination: TextEditorCheatSheet()) {
                    Text("TextEditor")
                }
                NavigationLink(destination: ImageCheatSheet()) {
                    Text("Image")
                }
                NavigationLink(destination: ShapeCheatSheet()) {
                    Text("Shape")
                }
                NavigationLink(destination: ProgressViewCheatSheet()) {
                    Text("ProgressView")
                }
                NavigationLink(destination: MapCheatSheet()) {
                    Text("Map")
                }
            }
        }
        .navigationTitle("View")
    }
}

#Preview {
    NavigationView {
        ViewContent()
    }
} 
