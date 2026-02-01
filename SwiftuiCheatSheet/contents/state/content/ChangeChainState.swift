import SwiftUI

struct ChangeChainState: View {
    private let correctAnswer = "3"
    let items: [String] = ["1", "2", "3", "4", "5"]

    @State private var selectedItem: String = "未選択"
    @State private var shouldShow: Bool = false

    var body: some View {
        VStack {
            if shouldShow {
                Text("正解(\(selectedItem))")
                    .font(.title2)
                    .padding()
            }

            ForEach(items, id: \.self) { item in
                Button {
                    selectedItem = item
                } label: {
                    Text(item)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 32)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .buttonStyle(.plain)
            }
        }
        .onChange(of: selectedItem) { _, newValue in
            shouldShow = (newValue == correctAnswer)
        }
    }
}

#Preview {
    ChangeChainState()
}

