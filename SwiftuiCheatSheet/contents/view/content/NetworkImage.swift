import SwiftUI

struct NetworkImage: View {
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

#Preview {
    NetworkImage()
}

