// 特定した学習要素:
// - VStack(spacing:): 縦に並ぶ子ビュー同士の間隔を数値で指定する
// - VStack().padding(): VStack の外側に余白を設けて周囲との間隔を作る
//
// 追加推奨ファイル: SwiftuiCheatSheet/contents/layout/VStackScreen.swift

import SwiftUI

// MARK: - TabData

TabData(
    title: "子ビューの間隔",
    description: "縦に並ぶ子ビュー同士の間隔を数値で調整する方法。デフォルトの隙間をなくしたり広げたりできる。",
    contentView: AnyView(
        HStack(spacing: 32) {
            VStack(spacing: 4) {
                Text("spacing: 0")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                VStack(spacing: 0) {
                    Text("A").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                    Text("B").frame(width: 40, height: 30).background(Color("Primary").opacity(0.07))
                    Text("C").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                }
            }
            VStack(spacing: 4) {
                Text("spacing: 16")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                VStack(spacing: 16) {
                    Text("A").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                    Text("B").frame(width: 40, height: 30).background(Color("Primary").opacity(0.07))
                    Text("C").frame(width: 40, height: 30).background(Color("Secondary").opacity(0.07))
                }
            }
        }
    ),
    code: """
        import SwiftUI

        // spacing でアイテム間の隙間を指定する
        // 省略するとシステムデフォルト（約8pt）が適用される

        VStack(spacing: 0) { // 隙間なし
            Text("A")
            Text("B")
            Text("C")
        }

        VStack(spacing: 16) { // 16pt の隙間
            Text("A")
            Text("B")
            Text("C")
        }
        """
),

TabData(
    title: "VStack の余白",
    description: "VStack の周囲に余白を設けて、隣接するコンテンツとの間隔を作る方法。背景色と組み合わせると余白の広さが分かりやすい。",
    contentView: AnyView(
        HStack(spacing: 32) {
            VStack(spacing: 4) {
                Text("padding なし")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                VStack(spacing: 4) {
                    Text("A")
                    Text("B")
                    Text("C")
                }
                .background(Color("Secondary").opacity(0.15))
            }
            VStack(spacing: 4) {
                Text("padding あり")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                VStack(spacing: 4) {
                    Text("A")
                    Text("B")
                    Text("C")
                }
                .padding()
                .background(Color("Secondary").opacity(0.15))
            }
        }
    ),
    code: """
        import SwiftUI

        VStack {
            Text("A")
            Text("B")
            Text("C")
        }
        .padding()          // 全方向に標準余白（16pt）
        // .padding(20)     // 数値で指定
        // .padding(.top)   // 方向を指定
        """
),
