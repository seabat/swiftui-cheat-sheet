import SwiftUI

struct ViewContent: View {
    // iOS 15 以降の場合のdismissアクション
    @Environment(\.dismiss) var dismiss
    // iOS 14 以前の場合のpresentationMode
    @Environment(\.presentationMode) var presentationMode
    
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
        // デフォルトのナビゲーションバーの戻るボタンには表示される文字列は全画面のタイトル。
        // ナビゲーションバーをカスタマイズするためにデフォルトのナビゲーションバーを非表示にし、
        // toolbar でカスタムのナビゲーションバーを表示する。
        .navigationBarBackButtonHidden(true) //
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
#if os(iOS)
                    if #available(iOS 15, *) {
                        dismiss() // iOS 15 以降
                    } else {
                        presentationMode.wrappedValue.dismiss() // iOS 14 以前
                    }
#endif
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward") // 戻るアイコン
                        Text("戻る") // カスタムの戻るテキスト
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        ViewContent()
    }
} 
