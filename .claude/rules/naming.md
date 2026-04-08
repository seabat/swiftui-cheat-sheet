# 命名規則・ナビゲーション構造

## 命名規則
- **画面（Screen）**: `XxxScreen` — NavigationStack で遷移する1画面を表す
- カテゴリ一覧画面は `XxxCategoryScreen`（例: `ViewCategoryScreen`, `LayoutCategoryScreen`）
- 個別チートシート画面は `XxxScreen`（例: `TextScreen`, `ButtonScreen`）
- Alert/ActionSheets はカテゴリ画面と詳細画面が分かれる: `AlertCategoryScreen` / `AlertDetailScreen`

## ナビゲーション構造
`ContentView.swift` の `Destination` enum がすべての遷移先を定義。
`contents/TopScreen.swift` の `.navigationDestination` で enum の各 case に対応する画面を返す。
