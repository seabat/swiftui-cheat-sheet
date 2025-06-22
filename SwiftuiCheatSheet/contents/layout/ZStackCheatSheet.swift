import SwiftUI

struct ZStackCheatSheet: View {
    var body: some View {
        Text("ZStack Cheat Sheet")
    }
}

#Preview {
    NavigationView {
        ZStackCheatSheet()
    }
}

#Preview("SafeAreaに背景画像") {
    ZStack {
        Image(.backgroundTimer)
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
        Text("largeTitle")
            .font(.largeTitle)
    }
}
