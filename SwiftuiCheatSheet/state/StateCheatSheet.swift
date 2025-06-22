import SwiftUI

struct StateCheatSheet: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("\(count)")
            Button(
                action: {
                    count = count + 1
                }, label: {
                    Text("カウントアップ")
                }
            )
        }
    }
}
