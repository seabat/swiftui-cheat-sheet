import SwiftUI

struct AsyncTabView: View {
    @State private var currentIndex = 0
    let imageCount = 4

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(0..<imageCount, id: \.self) { index in
                    AsyncImage(url: URL(string: "https://picsum.photos/800/400?random=\(index)")) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .scaledToFill()
                        } else {
                            Color.gray.opacity(0.3)
                                .overlay(ProgressView())
                        }
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 250)
            .cornerRadius(16)
            // Custom page indicators
            HStack(spacing: 8) {
                ForEach(0..<imageCount, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? Color.blue : Color.gray.opacity(0.5))
                        .frame(width: 8, height: 8)
                        .scaleEffect(currentIndex == index ? 1.2 : 1)
                        .animation(.spring(), value: currentIndex)
                }
            }
            .padding(.top, 12)
        }
        .padding()
    }
}

#Preview {
    AsyncTabView()
}

