import SwiftUI

struct VStackCheatSheet: View {
    var body: some View {
        VStack {
            Image(.shop)
            Text("shop")
        }
    }
}

#Preview("シンプル") {
    VStack {
        Image(.shop)
        Text("shop")
    }
}

#Preview("Spacerで余白を可能な限り広げる") {
    // Spacer() は可能なだけの余白を確保する
    VStack {
        Image(.shop)
        Spacer()
        Text("shop")
    }
}

#Preview("Spacerで指定サイズの余白") {
    // Spacer() は可能なだけの余白を確保する
    VStack {
        Image(.shop)
        Spacer()
        Text("shop")
        Spacer().frame(height: 40)
        Text("2025/04/07")
    }
}
