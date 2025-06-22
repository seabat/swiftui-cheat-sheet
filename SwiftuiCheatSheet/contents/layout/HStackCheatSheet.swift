import SwiftUI

struct HStackCheatSheet: View {
    var body: some View {
        Text("HStack Cheat Sheet")
    }
}

#Preview("Spacerで余白を可能な限り広げる") {
    // Spacer() は可能なだけの余白を確保する
    HStack {
        Image(.shop)
        Spacer()
        Text("shop")
    }
}

#Preview("Spacerで指定サイズの余白") {
    // Spacer() は可能なだけの余白を確保する
    HStack {
        Image(.shop)
        Spacer()
        Text("shop")
        Spacer().frame(width: 10)
        Text("2025/04/07")
    }
}

#Preview("アイテム間の距離") {
    HStack(spacing: 5) { // アイコンとテキストの間隔
        Image(systemName: "doc.text").font(.caption)
        Text("画像を表示").font(.caption)
    }
}

#Preview("囲い線") {
    HStack(spacing: 5) { // アイコンとテキストの間隔
        Image(systemName: "doc.text").font(.headline)
        Text("画像を表示").font(.headline)
    }
    .padding(.vertical, 8) // HStack 内部の padding
    .padding(.horizontal, 15) // SStack 内部の padding
    .background(
        RoundedRectangle(cornerRadius: 8)
            .fill(Color.blue.opacity(0.2)) // 背景色
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(
                        Color.gray.opacity(0.8),
                        lineWidth: 1
                    ) // 選択状態による枠線
            )
    )
}
