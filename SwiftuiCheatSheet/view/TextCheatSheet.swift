import SwiftUI

struct TextCheatSheet: View {
    var body: some View {
        Text("Text Cheat Sheet")
    }
}

#Preview("横幅MAX") {
    // 親コンポーネントの中で横いっぱいに広げる
    Text("じゃんけんをする")
        .frame(maxWidth: .infinity)
        .background(.pink)
}

#Preview("高さ指定") {
    Text("じゃんけんをする")
        .frame(height: 100)
        .background(.pink)
}

#Preview("テキストの色") {
    // 親コンポーネントの中で横いっぱいに広げる
    Text("じゃんけんをする")
        .foregroundColor(.white)
        .background(.pink)
}

#Preview("フォント(定義済みプロパティ)") {
    VStack {
        Text("largeTitle")
            .font(.largeTitle)
        Text("title")
            .font(.title)
        Text("headline")
            .font(.headline)
        Text("subheadline")
            .font(.subheadline)
        Text("body")
            .font(.body)
        Text("callout")
            .font(.callout)
        Text("footnote")
            .font(.footnote)
        Text("caption")
            .font(.caption)
    }
}

#Preview("余白(システムデフォルト)") {
    Text("1行目")
    Text("２行目")
        .padding(.bottom)
    Text("3行目")
}

#Preview("余白(数値)") {
    Text("1行目")
    Text("２行目")
        .padding(
            EdgeInsets(
                top: 0,
                leading: 0,
                bottom: 16,
                trailing: 0
            )
        )
    Text("3行目")
}
