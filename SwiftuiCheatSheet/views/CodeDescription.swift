import SwiftUI

struct CodeDescription: View {
    let description: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(description)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.body)
            Spacer()
        }
        .padding(.all) // 内部の padding
        .frame(maxWidth: .infinity)
        .frame(height: 105)
        .background(Color.pink.opacity(0.07))
        .padding(.vertical) // 外部の padding
    }
}

#Preview {
    VStack {
        CodeDescription(description: "これはコードの説明サンプルです。\n２行目\n３行目")
    }
    .background(Color(.systemGray6))
}
