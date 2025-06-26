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

#Preview("デフォルトの隙間を削除") {
    // VStack は アイテム間にデフォルトの隙間が存在する。
    VStack(spacing: 0) {
        Text("上部アイテム")
            .foregroundColor(.white)
            .background(.pink)
        Text("下部アイテム")
            .foregroundColor(.white)
            .background(.green)
    }
}

#Preview("内側にパディング") {
    // VStack は アイテム間にデフォルトの隙間が存在する。
    VStack(spacing: 0) {
        Text("上部アイテム")
            .foregroundColor(.white)
            .background(.pink)
        Text("下部アイテム")
            .foregroundColor(.white)
            .background(.green)
    }
    .padding(20)
    .background(Color.gray.opacity(0.2))
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
