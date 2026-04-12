import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景色",
        description: "VStack に背景色を付ける。",
        contentView: AnyView(
            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .background(Color("DemoRed"))
            """
    ),
    TabData(
        title: "サイズ",
        description: "VStack に幅 200pt・高さ 100ptを指定する。",
        contentView: AnyView(
            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            VStack {
                Text("XXXX")
                    .font(.headline)
                Text("ZZZZZZZZ")
                    .font(.subheadline)
            }
            .frame(width: 200, height: 100)
            .background(Color("DemoRed"))
            """
    ),
    TabData(
        title: "左寄せ揃い",
        description: "VStack の子ビュー先頭を左寄せで揃えて表示する。",
        contentView: AnyView(
            VStack(alignment: .leading) {
                Text("XXXX")
                Text("ZZZZZZZZ")
            }
            .frame(width: 200, height: 100)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            VStack(alignment: .leading) {
                Text("XXXX")
                Text("ZZZZZZZZ")
            }
            .frame(width: 200, height: 100)
            .background(Color("DemoRed"))

            // alignment の値
            //   .leading    左（LTR の場合）に揃える
            //   .center    中央に揃える
            //   .trailing    右（LTR の場合）に揃える
            """
    ),
    TabData(
        title: "frame の alignment",
        description: "VStack の子ビューをフレーム内のどの位置に配置するかを指定する方法。",
        contentView: AnyView(
            VStack {
                Text("A")
                Text("B")
            }
            .frame(width: 200, height: 100, alignment: .leading)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("A")
                        Text("B")
                    }
                    .frame(width: 200, height: 80, alignment: .leading)
                    .background(Color("DemoRed"))

                    // alignment の値
                    //   .leading     左寄せ（LTR の場合）
                    //   .center      中央（デフォルト）
                    //   .trailing    右寄せ（LTR の場合）
                    //   .topLeading  左上、など組み合わせも可
                }
            }
            """
    ),
    TabData(
        title: "子ビューの間隔",
        description: "縦に並ぶ子ビュー同士の間隔を数値で調整する方法。デフォルトの隙間をなくしたり広げたりできる。",
        contentView: AnyView(
            HStack(spacing: 32) {
                    VStack(spacing: 0) {
                        Text("A").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                        Text("B").frame(width: 40, height: 30).background(Color("Primary").opacity(0.07))
                        Text("C").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                    }
                    VStack(spacing: 16) {
                        Text("A").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                        Text("B").frame(width: 40, height: 30).background(Color("Primary").opacity(0.07))
                        Text("C").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                    }
            }
        ),
        code: """
            import SwiftUI

            // spacing でアイテム間の隙間を指定する
            // 省略するとシステムデフォルト（約8pt）が適用される

            HStack(spacing: 32) {
                VStack(spacing: 0) {
                    Text("A").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                    Text("B").frame(width: 40, height: 30).background(Color("Primary").opacity(0.07))
                    Text("C").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                }
                VStack(spacing: 16) {
                    Text("A").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                    Text("B").frame(width: 40, height: 30).background(Color("Primary").opacity(0.07))
                    Text("C").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                }
            }
            """
    ),
    TabData(
        title: "VStack の余白",
        description: "VStack の周囲に余白を設けて、隣接するコンテンツとの間隔を作る方法。背景色と組み合わせると余白の広さが分かりやすい。",
        contentView: AnyView(
            VStack(spacing: 4) {
                Text("A")
                Text("B")
                Text("C")
            }
            .padding()
            .background(Color("Secondary").opacity(0.15))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack(spacing: 4) {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()          // 全方向に標準余白（16pt）
                    // .padding(20)     // 数値で指定
                    // .padding(.top)   // 方向を指定
                }
            }
            """
    ),
]

struct VStackScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    VStackScreen()
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
