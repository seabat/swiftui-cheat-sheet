import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "背景色",
        description: "HStack に背景色を付ける。",
        contentView: AnyView(
            HStack {
                Text("A").font(.headline)
                Text("B").font(.headline)
                Text("C").font(.headline)
            }
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            HStack {
                Text("A").font(.headline)
                Text("B").font(.headline)
                Text("C").font(.headline)
            }
            .background(Color.red.opacity(0.15))
            """
    ),
    TabData(
        title: "サイズ",
        description: "HStack に幅 200pt・高さ 80pt を指定する。",
        contentView: AnyView(
            HStack {
                Text("A").font(.headline)
                Text("B").font(.headline)
                Text("C").font(.headline)
            }
            .frame(width: 200, height: 80)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            HStack {
                Text("A").font(.headline)
                Text("B").font(.headline)
                Text("C").font(.headline)
            }
            .frame(width: 200, height: 80)
            .background(Color.red.opacity(0.15))
            """
    ),
    TabData(
        title: "上揃え・下揃え",
        description: "HStack の子ビューを上または下に揃えて表示する。フォントサイズが異なるとき特に効果がわかりやすい。",
        contentView: AnyView(
            VStack(spacing: 16) {
                HStack(alignment: .top) {
                    Text("大").font(.largeTitle)
                    Text("中").font(.body)
                    Text("小").font(.caption)
                }
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color("DemoRed"))

                HStack(alignment: .bottom) {
                    Text("大").font(.largeTitle)
                    Text("中").font(.body)
                    Text("小").font(.caption)
                }
                .frame(height: 60)
                .frame(maxWidth: .infinity)
                .background(Color("DemoBlue"))
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    // 上揃え
                    HStack(alignment: .top) {
                        Text("大").font(.largeTitle)
                        Text("中").font(.body)
                        Text("小").font(.caption)
                    }
                    .frame(height: 60)
                    .background(Color.red.opacity(0.15))

                    // 下揃え
                    HStack(alignment: .bottom) {
                        Text("大").font(.largeTitle)
                        Text("中").font(.body)
                        Text("小").font(.caption)
                    }
                    .frame(height: 60)
                    .background(Color.blue.opacity(0.15))

                    // alignment の値
                    //   .top      上揃え
                    //   .center   中央（デフォルト）
                    //   .bottom   下揃え
                    //   .firstTextBaseline  最初のテキストのベースラインに揃える
                    //   .lastTextBaseline   最後のテキストのベースラインに揃える
                }
            }
            """
    ),
    TabData(
        title: "frame の alignment",
        description: "固定サイズのフレームを指定したとき、コンテンツをフレーム内のどの位置に配置するかを指定する方法。",
        contentView: AnyView(
            HStack {
                Text("A")
                Text("B")
            }
            .frame(width: 200, height: 80, alignment: .topLeading)
            .background(Color("DemoRed"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    HStack {
                        Text("A")
                        Text("B")
                    }
                    .frame(width: 200, height: 80, alignment: .topLeading)
                    .background(Color.red.opacity(0.15))

                    // alignment の値
                    //   .topLeading    左上
                    //   .top           上中央
                    //   .topTrailing   右上
                    //   .leading       左中央
                    //   .center        中央（デフォルト）
                    //   .trailing      右中央
                    //   .bottomLeading 左下  など
                }
            }
            """
    ),
    TabData(
        title: "子ビューの間隔",
        description: "横に並ぶ子ビュー同士の間隔を数値で調整する方法。デフォルトの隙間をなくしたり広げたりできる。",
        contentView: AnyView(
            VStack(spacing: 24) {
                HStack(spacing: 0) {
                    Text("A").frame(width: 30, height: 40).background(Color("DemoRed"))
                    Text("B").frame(width: 30, height: 40).background(Color("DemoBlue"))
                    Text("C").frame(width: 30, height: 40).background(Color("DemoGreen"))
                }
                HStack(spacing: 16) {
                    Text("A").frame(width: 30, height: 40).background(Color("DemoRed"))
                    Text("B").frame(width: 30, height: 40).background(Color("DemoBlue"))
                    Text("C").frame(width: 30, height: 40).background(Color("DemoGreen"))
                }
            }
        ),
        code: """
            import SwiftUI

            // spacing でアイテム間の隙間を指定する
            // 省略するとシステムデフォルト（約8pt）が適用される

            VStack(spacing: 24) {
                HStack(spacing: 0) {
                    Text("A").frame(width: 30, height: 40).background(Color.red.opacity(0.15))
                    Text("B").frame(width: 30, height: 40).background(Color.blue.opacity(0.15))
                    Text("C").frame(width: 30, height: 40).background(Color.green.opacity(0.15))
                }
                HStack(spacing: 16) {
                    Text("A").frame(width: 30, height: 40).background(Color.red.opacity(0.15))
                    Text("B").frame(width: 30, height: 40).background(Color.blue.opacity(0.15))
                    Text("C").frame(width: 30, height: 40).background(Color.green.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "HStack の余白",
        description: "HStack の周囲に余白を設けて、隣接するコンテンツとの間隔を作る。",
        contentView: AnyView(
            HStack {
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
                    HStack {
                        Text("A")
                        Text("B")
                        Text("C")
                    }
                    .padding()           // 全方向に標準余白（16pt）
                    // .padding(20)      // 数値で指定
                    // .padding(.leading) // 方向を指定
                    .background(Color.red.opacity(0.15))
                }
            }
            """
    ),
    TabData(
        title: "角丸",
        description: "HStack の角を丸くする。背景色と組み合わせるとカード UI のような見た目になる。",
        contentView: AnyView(
            HStack {
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
                    HStack {
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
        description: "HStack に影を付けてカードのような立体感を出す。色・ぼかし量・位置を調整できる。",
        contentView: AnyView(
            HStack {
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
                    HStack {
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
        description: "HStack の外周に枠線を描く。色と太さを指定できる。",
        contentView: AnyView(
            HStack {
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
                    HStack {
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
        description: "HStack の上に別の View を重ねて表示する。バッジや装飾ラベルの追加などに使う。",
        contentView: AnyView(
            HStack {
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
                    HStack {
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
        description: "幅が制限された HStack でもコンテンツの理想サイズを維持させる。上が指定なし（テキストが折り返す）、下が指定あり（折り返さない）。",
        contentView: AnyView(
            VStack(spacing: 16) {
                HStack {
                    Text("長いタイトルテキスト").font(.headline)
                    Text("説明文").font(.caption)
                }
                .frame(width: 160)
                .background(Color("DemoRed"))

                HStack {
                    Text("長いタイトルテキスト").font(.headline)
                    Text("説明文").font(.caption)
                }
                .fixedSize()
                .frame(width: 160)
                .background(Color("DemoBlue"))
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack(spacing: 16) {
                        // fixedSize なし: テキストが折り返す
                        HStack {
                            Text("長いタイトルテキスト").font(.headline)
                            Text("説明文").font(.caption)
                        }
                        .frame(width: 160)
                        .background(Color.red.opacity(0.15))

                        // fixedSize あり: テキストが折り返さない
                        HStack {
                            Text("長いタイトルテキスト").font(.headline)
                            Text("説明文").font(.caption)
                        }
                        .fixedSize()    // コンテンツの理想サイズに固定
                        // .fixedSize(horizontal: true, vertical: false)  // 水平方向のみ
                        .frame(width: 160)
                        .background(Color.blue.opacity(0.15))
                    }
                }
            }
            """
    ),
    TabData(
        title: "文字色の一括指定",
        description: "HStack 全体の文字色をまとめて指定する。子ビューごとに個別設定しなくて済む。",
        contentView: AnyView(
            HStack {
                Text("タイトル").font(.headline)
                Text("サブ").font(.subheadline)
                Text("本文").font(.body)
            }
            .foregroundStyle(Color("Primary"))
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    HStack {
                        Text("タイトル").font(.headline)
                        Text("サブ").font(.subheadline)
                        Text("本文").font(.body)
                    }
                    .foregroundStyle(.blue)     // 子ビュー全体に適用
                }
            }
            """
    ),
    TabData(
        title: "透明度",
        description: "HStack 全体の透明度を調整する。0 で完全透明、1 で完全不透明。",
        contentView: AnyView(
            VStack(spacing: 16) {
                HStack {
                    Text("A")
                    Text("B")
                }
                .padding()
                .background(Color("DemoRed"))
                .opacity(1.0)

                HStack {
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
                    VStack(spacing: 16) {
                        HStack {
                            Text("A")
                            Text("B")
                        }
                        .padding()
                        .background(Color.red.opacity(0.15))
                        .opacity(1.0)

                        HStack {
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
        description: "HStack の frame からはみ出した子ビューを切り取って表示する。上が切り取りなし、下が切り取りあり。",
        contentView: AnyView(
            VStack(spacing: 24) {
                HStack {
                    Circle()
                        .fill(Color("Primary"))
                        .frame(width: 60, height: 60)
                }
                .frame(width: 40, height: 60)
                .background(Color("DemoRed"))

                HStack {
                    Circle()
                        .fill(Color("Primary"))
                        .frame(width: 60, height: 60)
                }
                .frame(width: 40, height: 60)
                .background(Color("DemoBlue"))
                .clipped()
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack(spacing: 24) {
                        // clipped なし: はみ出した部分が見える
                        HStack {
                            Circle()
                                .fill(.blue)
                                .frame(width: 60, height: 60)
                        }
                        .frame(width: 40, height: 60)
                        .background(Color.red.opacity(0.15))

                        // clipped あり: frame の外側が切り取られる
                        HStack {
                            Circle()
                                .fill(.blue)
                                .frame(width: 60, height: 60)
                        }
                        .frame(width: 40, height: 60)
                        .background(Color.blue.opacity(0.15))
                        .clipped()  // frame の外側を切り取る
                    }
                }
            }
            """
    ),
    TabData(
        title: "ベースライン揃え",
        description: "フォントサイズが異なるテキストを横並びにするとき、ベースラインを基準に揃えて自然に見せる方法。上が中央揃え、下がベースライン揃え。",
        contentView: AnyView(
            VStack(spacing: 20) {
                HStack(alignment: .center) {
                    Text("大").font(.largeTitle)
                    Text("テキスト").font(.caption)
                }
                .background(Color("DemoRed"))

                HStack(alignment: .firstTextBaseline) {
                    Text("大").font(.largeTitle)
                    Text("テキスト").font(.caption)
                }
                .background(Color("DemoBlue"))
            }
        ),
        code: """
            import SwiftUI

            struct SampleView: View {
                var body: some View {
                    VStack(spacing: 20) {
                        // center（デフォルト）: 高さの中央を基準に揃える
                        HStack(alignment: .center) {
                            Text("大").font(.largeTitle)
                            Text("テキスト").font(.caption)
                        }
                        .background(Color.red.opacity(0.15))

                        // firstTextBaseline: 最初のテキストのベースラインを基準に揃える
                        HStack(alignment: .firstTextBaseline) {
                            Text("大").font(.largeTitle)
                            Text("テキスト").font(.caption)
                        }
                        .background(Color.blue.opacity(0.15))
                        // .lastTextBaseline: 最後のテキストのベースラインを基準に揃える
                    }
                }
            }
            """
    ),
]

struct HStackScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    HStackScreen()
}
