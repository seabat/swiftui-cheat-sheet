import SwiftUI

struct Card<Content: View>: View {
    var padding: CGFloat = 16
    var cornerRadius: CGFloat = 12
    var shadowRadius: CGFloat = 5
    var backgroundColor: Color = Color(.systemBackground)
    @ViewBuilder let content: () -> Content

    var body: some View {
        content()
            .padding(padding)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            // SwiftUI の .shadow() は半透明のビューには影を描画しない（またはほとんど見えない）ことがある。
            // 影を表示するレイアーを背景に追加することで、影が見えるようにする。
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color(.systemBackground))
                    .shadow(
                        color: Color.black.opacity(0.2),
                        radius: shadowRadius,
                        x: 0,
                        y: 2
                    )
            )
    }
}

#Preview("デフォルト（Text）") {
    VStack {
        Card(backgroundColor: Color.blue.opacity(0.08)) {
            Text("Card")
        }
        .padding(24)
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.red.opacity(0.15))
}

#Preview("カスタムコンテンツ") {
    Card(backgroundColor: Color.blue.opacity(0.08)) {
        VStack(alignment: .leading, spacing: 8) {
            Text("タイトル")
                .font(.headline)
            Text("メッセージ")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    .padding(24)
}
