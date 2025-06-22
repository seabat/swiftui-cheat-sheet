import SwiftUI

struct ImageCheatSheet: View {
    var body: some View {
        Image(.shop)
    }
}

#Preview("カスタム画像を表示") {
    Image(.shop)
}

#Preview("システム画像を表示") {
    Image(systemName: "cloud.heavyrain.fill")
}

#Preview("システム画像にスタイルを適用") {
    Image(systemName: "cloud.heavyrain.fill")
        .foregroundColor(.red)
        .font(.largeTitle)
}

#Preview("背景色") {
    Image(.shop)
        .background(Color.blue)
}

#Preview("描画可能領域を画像で埋める") {
    Image(.shop).resizable()
}

#Preview("サイズ指定") {
    Image(.shop)
        .resizable() // resizable なしで frame だけだとサイズ変更されない
        .frame(width: 100.0, height: 100.0)
}

#Preview("サイズ片方指定") {
    Image(.shop)
        .resizable() // resizable なしで frame だけだとサイズ変更されない
        .frame(width: 100.0)
}

#Preview("アスペクト比を維持して拡大") {
    Image(.shop).resizable().scaledToFit()
}

#Preview("padding") {
    Image(.shop).resizable().scaledToFit().padding()
}

#Preview("SafeArea") {
    Image(.backgroundTimer)
        .resizable()
        .ignoresSafeArea()
        .scaledToFill()
}
