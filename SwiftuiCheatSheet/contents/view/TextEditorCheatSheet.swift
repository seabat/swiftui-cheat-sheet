import SwiftUI

struct TextEditorCheatSheet: View {
    var body: some View {
        Text("TextEditor Cheat Sheet")
    }
}

#Preview("基本") {
    @Previewable @State var inputText: String = ""
    TextField(
        "キーワード",
        text: $inputText,
        prompt: Text("キーワードを入力してください")
    ).onSubmit {}
}


