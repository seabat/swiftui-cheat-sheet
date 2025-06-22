import SwiftUI

struct ButtonCheatSheet: View {
    var body: some View {
        Button(
            action: {
                print("タップされた！")
            }, label: {
                Text("ボタン")
            }
        )
    }
}

#Preview("テキストボタン") {
    Button(
        action: {
            print("タップされた！")
        },
        label: {
            Text("ボタン")
        }
    )
}

#Preview("画像ボタン") {
    Button(
        action: {
            print("タップされた！")
        },
        label: {
            Image(.lightBulb)
        }
    )
}

