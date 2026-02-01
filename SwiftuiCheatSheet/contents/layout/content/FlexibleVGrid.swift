import SwiftUI

struct FlexibleVGrid: View {
    
    // 列数と幅の取り方を設定
    let columns = [
        GridItem(.flexible()), // .flexible() は 列の幅を可能な限り広げる
        GridItem(.flexible()),
        GridItem(.flexible())
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
            .padding(10)
        }
    }
}

#Preview {
    FlexibleVGrid()
}

