# 画面パターン

## チートシート画面（XxxScreen）

`TabBarScreen(allTabs: tabs)` を返す構成:

```swift
private let tabs: [TabData] = [ ... ]

struct XxxScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}
```

## カテゴリ一覧画面（XxxCategoryScreen）

`List + Button` で子画面へ遷移する構成。
