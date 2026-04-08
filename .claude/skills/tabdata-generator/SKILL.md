---
name: tabdata-generator
description: SwiftUI コードを渡すと、学習すべき文法要素を抽出して TabData エントリを生成する
disable-model-invocation: false
allowed-tools: Read, Write
---

# TabData ジェネレーター

渡された SwiftUI コードを解析し、学習価値のある文法要素を抽出して `TabData` エントリを生成する。

## 入力コード

```
$ARGUMENTS
```

## ステップ 1: プロジェクトのパターンを把握する

以下のファイルを読んでプロジェクトの既存パターンを確認する：

- `SwiftuiCheatSheet/views/TabData.swift` — TabData の構造体定義
- `SwiftuiCheatSheet/contents/view/content/NetworkImage.swift` — State を使う別 View 定義のパターン
- `SwiftuiCheatSheet/contents/view/ImageScreen.swift` — NetworkImage を TabData に設定している例

## ステップ 2: 学習要素を特定する

入力コードを解析し、以下の観点で学習すべき SwiftUI 文法要素を抽出する：

- SwiftUI 特有の修飾子（`.modifier`, `.overlay`, `.animation` など）
- State 管理（`@State`, `@Binding`, `@ObservedObject` など）
- View 種別（`List`, `LazyVGrid`, `AsyncImage` など）
- レイアウト構造（`VStack`, `HStack`, `ZStack` など組み合わせパターン）
- 条件分岐・繰り返しによる View 構築
- データバインディングや Combine の活用

複数の要素が含まれる場合は、それぞれ独立した TabData として分割する。
ただし、密接に関連している場合は 1 つの TabData にまとめても良い。

## ステップ 3: 各要素の TabData を設計する

各文法要素について：

1. **デモ View を設計する**
   - その文法要素だけを示す最小限の View にする
   - `@State` など状態管理が必要な場合 → 別 struct（`XxxDemoView`）として定義
   - 状態管理が不要な場合 → `AnyView(...)` にインラインで記述

2. **title を決める**: 文法要素名を簡潔に（例: "AsyncImage の基本", "@State でカウント"）

3. **description を書く**: ユーザーが「どんな見た目・挙動を実現したいか」をコードを見ずに想像できるよう、**結果・目的を日本語で説明する**（1〜2 文）。
   - **禁止**: 修飾子名・API 名・引数名をそのまま記載すること（例: `frame(width:alignment:)`、`alignment: .leading` など）
   - **OK 例**: "固定幅のフレーム内でテキストを左・中央・右に寄せて表示する方法。"
   - **NG 例**: "`frame(width:alignment:)` の alignment パラメータで配置位置を指定する。"

4. **code 文字列を書く**: `import SwiftUI` から始め、デモ View の実装を記述する

## ステップ 4: ファイルに書き出す

生成した TabData を `/Users/ryouta/Dev/iOS/swiftui-cheat-sheet/.claude/skills/tabdata-generator/tabdata.swift` に書き出す。

ファイルの内容は以下の構造にする：

```swift
// 特定した学習要素:
// - 要素1: <名前と概要>
// - 要素2: <名前と概要>
//
// 追加推奨ファイル: SwiftuiCheatSheet/contents/<カテゴリ>/<XxxScreen>.swift

import SwiftUI

// MARK: - TabData

TabData(
    title: "...",
    description: "...",
    contentView: AnyView(
        // ...
    ),
    code: """
        import SwiftUI

        // コード例
        """
),

// 複数ある場合は続けて記述
TabData(
    // ...
),
```

State ありで別 struct が必要な場合は、対応する struct の定義もコメント付きで末尾に追記する：

```swift
// MARK: - 別ファイルに定義する View
// ファイル: SwiftuiCheatSheet/contents/<カテゴリ>/content/XxxDemoView.swift

struct XxxDemoView: View {
    // State と body の実装
}
```

## ステップ 5: 結果を報告する

書き出し完了後、以下を報告する：

- 特定した学習要素の一覧
- 出力ファイルのパス
- 追加推奨ファイルとその理由

---

## 注意事項

- `contentView` に設定するデモ View は、プレビューとして画面上に表示されるため、コンパクトで視覚的に分かりやすくする
- `code` 文字列はコピーして使えるよう完結した実装にする（実際の struct 名は `XxxDemoView` など分かりやすい名前に）
- カラーは `Color("Primary")` / `Color("Secondary")` を使用する（プロジェクトのカラー定義に従う）
- 既存の XxxScreen に追加する場合と、新規 Screen を作る場合でどちらが適切か提案する
