import SwiftUI

struct ExtentionCheatSheet: View {
    @State var count = 0
    var body: some View {
        VStack {
            Image(.backgroundTimer)
                .backgroundModifier()
        }
    }
}

extension Image {
    func backgroundModifier() -> some View{
        self
            .resizable()
            .ignoresSafeArea()
            .scaledToFit()
    }
}

#Preview("Image に Modifier で背景を付ける") {
    VStack {
        Image(.backgroundTimer)
            .backgroundModifier()
    }
}

