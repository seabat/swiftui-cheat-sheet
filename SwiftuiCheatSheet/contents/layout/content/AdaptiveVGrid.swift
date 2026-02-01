import SwiftUI

struct AdaptiveVGrid: View {
    
    // .adaptive(minimum: 80) は 列幅を最低 80pt にし、列数を自動にする
    let columns = [GridItem(.adaptive(minimum: 80))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(0..<10, id: \.self) { _ in
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
    AdaptiveVGrid()
}

