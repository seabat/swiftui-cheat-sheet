import SwiftUI

struct CountState: View {
    
    @State var count = 0
    var body: some View {
        VStack {
            Text("カウント: \(count)")
            Button(action: {
                count += 1
            }, label: {
                Text("カウントアップ")
            })
        }
    }
}

#Preview {
    CountState()
}


