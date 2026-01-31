import SwiftUI

private struct NetworkImageDemoView: View {
    let imageURL1 = URL(string: "https://placehold.jp/150x150.png")!
    let imageURL2 = URL(string: "https://placehold.jp/3d4070/ffffff/240x180.png?text=%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E7%94%BB%E5%83%8F")

    @State private var loadSecondImage = false

    var body: some View {
        VStack {
            AsyncImage(url: imageURL1)

            Button("2つ目の画像を読み込む") {
                loadSecondImage = true
            }
            .padding(.vertical, 8)

            if loadSecondImage, let url = imageURL2 {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                            .frame(width: 200, height: 150)
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                    case .failure:
                        Image(systemName: "photo")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                            .frame(width: 200, height: 150)
                            .background(Color.gray.opacity(0.2))
                    @unknown default:
                        EmptyView()
                    }
                }
            }
        }
    }
}

private let tabs: [TabData] = [
    TabData(
        title: "画像リソース",
        description: "Assets.xcassets に格納した画像リソース shop を表示する。",
        contentView: AnyView(
            Image(.shop)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            Image(.shop) // Image("shop") でも良い
            """)
        )
    ),
    TabData(
        title: "システム画像",
        description: "システム画像 cloud.heavyrain を表示する。",
        contentView: AnyView(
            Image(systemName: "cloud.heavyrain.fill")
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI
            
            Image(systemName: "cloud.heavyrain.fill")
            """)
        )
    ),
    TabData(
        title: "システム画像にスタイル",
        description: "システム画像 cloud.heavyrain を赤色にし、サイズは .largeTitle にする。",
        contentView: AnyView(
            Image(systemName: "cloud.heavyrain.fill")
                .foregroundColor(.red)
                .font(.largeTitle)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(systemName: "cloud.heavyrain.fill")
                .foregroundColor(.red)
                .font(.largeTitle)
            """)
        )
    ),
    TabData(
        title: "背景色",
        description: "画像の背景色を赤にする。",
        contentView: AnyView(
            Image(.shop)
                .background(Color.blue)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .background(Color.blue)
            """)
        )
    ),
    TabData(
        title: "画像拡大",
        description: "描画可能領域を画像を拡大(縮小)して埋める。",
        contentView: AnyView(
            Image(.shop).resizable()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop).resizable()
            """)
        )
    ),
    TabData(
        title: "サイズ指定",
        description: "幅 100pt、高さ 100pt を指定して画像を表示する",
        contentView: AnyView(
            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0, height: 100.0)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0, height: 100.0)
            """)
        )
    ),
    TabData(
        title: "横幅指定",
        description: "画像の横幅 100 pt を指定する。",
        contentView: AnyView(
            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable() // resizable なしで frame だけだとサイズ変更されない
                .frame(width: 100.0)
            """)
        )
    ),
    TabData(
        title: "アスペクト比維持拡大",
        description: "画像の縦横比を維持しながら、描画可能領域に画像が収まるように拡大(縮小)する。",
        contentView: AnyView(
            Image(.shop)
                .resizable()
                .scaledToFit()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable()
                .scaledToFit() // aspectRatio(contentMode: .fit) でも可。
            """)
        )
    ),
    TabData(
        title: "描画領域を画像で埋める",
        description: "画像の縦横比を維持しながら、描画可能領域を画像で埋めるように拡大(縮小)する。",
        contentView: AnyView(
            VStack {
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    // 親のサイズを指定しないと Image が親の領域を無視して表示してしまう
                    .frame(width: 100.0, height: 200.0)
                    .clipped()
            }
            .frame(width: 100.0, height: 200.0)
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable()
                .scaledToFill() // .aspectRatio(contentMode: .fill) でも可
                .clipped() // fill を指定する場合は .clipped() が必要
            """)
        )
    ),
    TabData(
        title: "padding",
        description: "画像の周りに padding をつける",
        contentView: AnyView(
            Image(.shop).resizable().scaledToFit().padding()
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop).resizable().scaledToFit().padding()
            """)
        )
    ),
    TabData(
        title: "ネットワーク画像",
        description: "ネットワーク上の画像を非同期で表示する",
        contentView: AnyView(NetworkImageDemoView()),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            private struct NetworkImageDemoView: View {
                let imageURL1 = URL(string: "https://placehold.jp/150x150.png")!
                let imageURL2 = URL(string: "https://placehold.jp/3d4070/ffffff/240x180.png?text=%E3%83%8D%E3%83%83%E3%83%88%E3%83%AF%E3%83%BC%E3%82%AF%E7%94%BB%E5%83%8F")

                @State private var loadSecondImage = false

                var body: some View {
                    VStack {
                        AsyncImage(url: imageURL1) // AsyncImage は iOS15 から

                        Button("2つ目の画像を読み込む") {
                            loadSecondImage = true
                        }
                        .padding(.vertical, 8)

                        if loadSecondImage, let url = imageURL2 {
                            AsyncImage(url: url) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView()
                                        .frame(width: 200, height: 150)
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFit()
                                case .failure:
                                    Image(systemName: "photo")
                                        .font(.largeTitle)
                                        .foregroundColor(.gray)
                                        .frame(width: 200, height: 150)
                                        .background(Color.gray.opacity(0.2))
                                @unknown default:
                                    EmptyView()
                                }
                            }
                        }
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "切り取り",
        description: "画像を切り取る。",
        contentView: AnyView(
            VStack(spacing: 20) {
                // Circular avatar - the most common case
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
                    .clipShape(Circle())

                // Rounded rectangle - great for cards
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 120)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                // Capsule - nice for wide images
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 80)
                    .background(Color.blue)
                    .clipShape(Capsule())
            }
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            VStack(spacing: 20) {
                // Circular avatar - the most common case
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .background(Color.blue)

                // Rounded rectangle - great for cards
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 120)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .background(Color.blue)
                // Capsule - nice for wide images
                Image(.shop)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 80)
                    .clipShape(Capsule())
                    .background(Color.blue)
            }
            """)
        )
    ),
    TabData(
        title: "グラデーション",
        description: "画像にグラデーションをつける",
        contentView: AnyView(
            Image(.shop)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .mask(
                    LinearGradient(
                        colors: [.black, .clear],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
        ),
        codeView: AnyView(
            CodeWebView(code: """
            import SwiftUI

            Image(.shop)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .mask(
                    LinearGradient(
                        colors: [.black, .clear],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            """)
        )
    ),
]


struct ImageCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    ImageCheatSheet()
}
