import SwiftUI

struct CutImage: View {
    
    var body: some View {
        VStack(spacing: 20) {
            // Circular avatar - the most common case
            Image(.pancake)
                .resizable()
                // 画像が frame(width: 130, height: 130) より大きい場合は拡大指定しなくても良い。
                // 画像が拡大され、かつ丸型で切り抜く場合は画像が長方形の場合、scaleToFit() だとうまくいかない
                .scaledToFill()
                .frame(width: 130, height: 130)
                .clipShape(Circle())

            // Rounded rectangle - great for cards
            Image(.pancake)
                .resizable()
                // 画像が frame(width: 130, height: 130) より大きい場合は拡大指定しなくても良い。
                .scaledToFill()
                .frame(width: 200, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 20))

            // Capsule - nice for wide images
            Image(.pancake)
                .resizable()
                // 画像が frame(width: 130, height: 130) より大きい場合は拡大指定しなくても良い。
                .scaledToFill()
                .frame(width: 200, height: 80)
                .background(Color.blue)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    CutImage()
}
