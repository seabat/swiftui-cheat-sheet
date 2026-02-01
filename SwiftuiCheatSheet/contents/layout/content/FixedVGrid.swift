import SwiftUI

struct FixedVGrid: View {
    
    // 列数と幅の取り方を設定
    let columns = [
        GridItem(.fixed(100)), // .fixed(100) は 列幅を 100pt で固定する
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(0..<6, id: \.self) { _ in
                    Image(.pancakeSquare)
                        .resizable()
                        .scaledToFit()
                }
            }
            .background(Color.gray.opacity(0.2))
            .padding(10)
        }
    }
}

#Preview {
    FixedVGrid()
}

