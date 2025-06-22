import SwiftUI

struct HStackCheatSheet: View {
    var body: some View {
        Text("HStack Cheat Sheet")
    }
}

#Preview {
    NavigationView {
        HStackCheatSheet()
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
