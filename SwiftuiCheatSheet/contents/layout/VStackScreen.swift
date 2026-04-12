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
            .background(Color.red.opacity(0.15))
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
            .background(Color.red.opacity(0.15))
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
            .background(Color.red.opacity(0.15))

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
                    .background(Color.red.opacity(0.15))

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
                    Text("A").frame(width: 40, height: 30).background(Color("DemoRed"))
                    Text("B").frame(width: 40, height: 30).background(Color("DemoBlue"))
                    Text("C").frame(width: 40, height: 30).background(Color("DemoGreen"))
                }
                VStack(spacing: 16) {
                    Text("A").frame(width: 40, height: 30).background(Color("DemoRed"))
                    Text("B").frame(width: 40, height: 30).background(Color("DemoBlue"))
                    Text("C").frame(width: 40, height: 30).background(Color("DemoGreen"))
                }
            }
        ),
        code: """
            import SwiftUI

            // spacing でアイテム間の隙間を指定する
            // 省略するとシステムデフォルト（約8pt）が適用される

            HStack(spacing: 32) {
                VStack(spacing: 0) {
                    Text("A").frame(width: 40, height: 30).background(Color.red.opacity(0.15))
                    Text("B").frame(width: 40, height: 30).background(Color.blue.opacity(0.15))
                    Text("C").frame(width: 40, height: 30).background(Color.green.opacity(0.15))
                }
                VStack(spacing: 16) {
                    Text("A").frame(width: 40, height: 30).background(Color.red.opacity(0.15))
                    Text("B").frame(width: 40, height: 30).background(Color.blue.opacity(0.15))
                    Text("C").frame(width: 40, height: 30).background(Color.green.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "VStack の余白",
        description: "VStack の周囲に余白を設けて、隣接するコンテンツとの間隔を作る。",
        contentView: AnyView(
            VStack() {
                Text("A")
                Text("B")
                Text("C")
            }
            .padding()
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack() {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()          // 全方向に標準余白（16pt）
                    // .padding(20)     // 数値で指定
                    // .padding(.top)   // 方向を指定
                    .background(Color.red.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "角丸",
        description: "VStack の角を丸くする。背景色と組み合わせるとカード UI のような見た目になる。",
        contentView: AnyView(
            VStack {
                Text("A")
                Text("B")
                Text("C")
            }
            .padding()
            .background(Color("DemoRed"))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()
                    .background(Color.red.opacity(0.15))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    // .clipShape(Circle())           // 円
                    // .clipShape(Ellipse())          // 楕円
                    // .clipShape(Capsule())          // カプセル形（短辺が半円）
                    // .clipShape(Rectangle())        // 矩形（角丸なし）
                    // iOS 17+ のショートハンド
                    // .clipShape(.rect(cornerRadius: 12))
                    // .clipShape(.capsule)
                }
            }
            """
    ),
    TabData(
        title: "影",
        description: "VStack に影を付けてカードのような立体感を出す。色・ぼかし量・位置を調整できる。",
        contentView: AnyView(
            VStack {
                Text("A")
                Text("B")
                Text("C")
            }
            .padding()
            .background(Color("DemoRed"))
            .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()
                    .background(Color.red.opacity(0.15))
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 0, y: 4)
                    // radius: ぼかし量  x/y: オフセット
                }
            }
            """
    ),
    TabData(
        title: "枠線",
        description: "VStack の外周に枠線を描く。色と太さを指定できる。",
        contentView: AnyView(
            VStack {
                Text("A")
                Text("B")
                Text("C")
            }
            .padding()
            .border(Color("Primary"), width: 2)
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()
                    .border(.blue, width: 2)
                }
            }
            """
    ),
    TabData(
        title: "オーバーレイ",
        description: "VStack の上に別の View を重ねて表示する。バッジや装飾ラベルの追加などに使う。",
        contentView: AnyView(
            VStack {
                Text("A")
                Text("B")
                Text("C")
            }
            .padding()
            .background(Color("DemoRed"))
            .overlay(alignment: .topTrailing) {
                Text("NEW")
                    .font(.caption2)
                    .padding(4)
                    .background(Color("Primary"))
                    .foregroundStyle(.white)
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()
                    .background(Color.red.opacity(0.15))
                    .overlay(alignment: .topTrailing) {
                        Text("NEW")
                            .font(.caption2)
                            .padding(4)
                            .background(.red)
                            .foregroundStyle(.white)
                    }
                }
            }
            """
    ),
    TabData(
        title: "fixedSize",
        description: "幅が制限された VStack でもコンテンツの理想サイズを維持させる。左が指定なし（テキストが折り返す）、右が指定あり（折り返さない）。",
        contentView: AnyView(
            HStack(spacing: 48) {
                VStack(alignment: .leading) {
                    Text("長いタイトルテキスト")
                        .font(.headline)
                    Text("説明文")
                        .font(.caption)
                }
                .frame(width: 100)
                .background(Color("DemoRed"))

                VStack(alignment: .leading) {
                    Text("長いタイトルテキスト")
                        .font(.headline)
                    Text("説明文")
                        .font(.caption)
                }
                .fixedSize()
                .frame(width: 100)
                .background(Color("DemoBlue"))
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    HStack(spacing: 48) {
                        // fixedSize なし: テキストが折り返す
                        VStack(alignment: .leading) {
                            Text("長いタイトルテキスト")
                                .font(.headline)
                            Text("説明文")
                                .font(.caption)
                        }
                        .frame(width: 100)
                        .background(Color.red.opacity(0.15))

                        // fixedSize あり: テキストが折り返さない
                        VStack(alignment: .leading) {
                            Text("長いタイトルテキスト")
                                .font(.headline)
                            Text("説明文")
                                .font(.caption)
                        }
                        .fixedSize()    // コンテンツの理想サイズに固定
                        // .fixedSize(horizontal: true, vertical: false)  // 水平方向のみ
                        .frame(width: 100)
                        .background(Color.blue.opacity(0.15))
                    }
                }
            }
            """
    ),
    TabData(
        title: "文字色の一括指定",
        description: "VStack 全体の文字色をまとめて指定する。子ビューごとに個別設定しなくて済む。",
        contentView: AnyView(
            VStack {
                Text("タイトル").font(.headline)
                Text("サブタイトル").font(.subheadline)
                Text("本文").font(.body)
            }
            .foregroundStyle(Color("Primary"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack {
                        Text("タイトル").font(.headline)
                        Text("サブタイトル").font(.subheadline)
                        Text("本文").font(.body)
                    }
                    .foregroundStyle(.blue)     // 子ビュー全体に適用
                }
            }
            """
    ),
    TabData(
        title: "透明度",
        description: "VStack 全体の透明度を調整する。0 で完全透明、1 で完全不透明。",
        contentView: AnyView(
            HStack(spacing: 24) {
                VStack {
                    Text("A")
                    Text("B")
                }
                .padding()
                .background(Color("DemoRed"))
                .opacity(1.0)

                VStack {
                    Text("A")
                    Text("B")
                }
                .padding()
                .background(Color("DemoRed"))
                .opacity(0.3)
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    HStack(spacing: 24) {
                        VStack {
                            Text("A")
                            Text("B")
                        }
                        .padding()
                        .background(Color.red.opacity(0.15))
                        .opacity(1.0)

                        VStack {
                            Text("A")
                            Text("B")
                        }
                        .padding()
                        .background(Color.red.opacity(0.15))
                        .opacity(0.3)   // 0.0（透明）〜 1.0（不透明）
                    }
                }
            }
            """
    ),
    TabData(
        title: "クリップ",
        description: "VStack の frame からはみ出した子ビューを切り取って表示する。左が切り取りなし、右が切り取りあり。",
        contentView: AnyView(
            HStack(spacing: 32) {
                VStack {
                    Circle()
                        .fill(Color("Primary"))
                        .frame(width: 60, height: 60)
                }
                .frame(width: 60, height: 40)
                .background(Color("DemoRed"))

                VStack {
                    Circle()
                        .fill(Color("Primary"))
                        .frame(width: 60, height: 60)
                }
                .frame(width: 60, height: 40)
                .background(Color("DemoBlue"))
                .clipped()
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    HStack(spacing: 32) {
                        // clipped なし: はみ出した部分が見える
                        VStack {
                            Circle()
                                .fill(.blue)
                                .frame(width: 60, height: 60)
                        }
                        .frame(width: 60, height: 40)
                        .background(Color.red.opacity(0.15))

                        // clipped あり: frame の外側が切り取られる
                        VStack {
                            Circle()
                                .fill(.blue)
                                .frame(width: 60, height: 60)
                        }
                        .frame(width: 60, height: 40)
                        .background(Color.blue.opacity(0.15))
                        .clipped()  // frame の外側を切り取る
                    }
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
