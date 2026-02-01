import SwiftUI

struct AsyncImageVGrid: View {
    @State private var shouldShowGrid = false

    let images = Array(0...11)
    
    // 列数と幅の取り方を設定
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack(spacing: 16) {
            if shouldShowGrid {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 2) {
                        // NOTE: ForEach の第２引数 id: \.self は 配列の要素をそのまま id として使ってよい場合に指定する
                        ForEach(images, id: \.self) { item in
                            AsyncImage(url: URL(string: "https://picsum.photos/200?random=\(item)")) { phase in
                                if let image = phase.image {
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } else if phase.error != nil {
                                    Color.gray
                                } else {
                                    Color.gray.opacity(0.3)
                                }
                            }
                            .frame(minHeight: 120)
                            .clipped()
                        }
                    }
                }
            } else {
                Button("グリッドを表示") {
                    shouldShowGrid = true
                }
            }
        }
    }
}

#Preview {
    AsyncImageVGrid()
}

