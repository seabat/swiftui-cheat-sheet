# カラー定義

`Assets.xcassets` に以下のカラーアセットを定義している。
UI にカラーを適用する際は必ずこれらを使用すること。

## カラーアセット

| アセット名 | Light | Dark | 用途 |
|---|---|---|---|
| `Primary` | `#E8475F` コーラルローズ | `#FF7A8A` ライトローズ | 選択状態・アクション要素 |
| `Secondary` | `#4E6FC5` ペリウィンクルブルー | `#93B4F5` ライトペリウィンクル | 背景・補助要素 |

## 使い方

```swift
// 文字・アイコン色
.foregroundStyle(Color("Primary"))
.foregroundStyle(Color("Secondary"))

// 背景色（薄く使う場合）
.background(Color("Secondary").opacity(0.07))
```

## 現在の適用箇所

**Primary**
- `TabButton` — 選択中タブの背景・枠線・テキスト色
- `TabBarScreen` — コピーボタンのテキスト・アイコン、FAB グラデーション

**Secondary**
- `TabButton` — 未選択タブの枠線色
- `ScrollableTabBar` — タブバー背景
- `CodeDescription` — 説明エリア背景
