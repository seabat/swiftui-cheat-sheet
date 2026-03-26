# SwiftUI Cheat Sheet プロジェクト

## 概要
SwiftUI のコンポーネント・機能をカテゴリ別に一覧できるチートシートアプリ。

## 技術スタック
- Swift / SwiftUI
- iOS シミュレーター: iPhone 17（OS 26.0.1）
- ビルド: `xcodebuild -scheme SwiftuiCheatSheet -destination 'platform=iOS Simulator,name=iPhone 17' build`
- .xcodeproj は `PBXFileSystemSynchronizedRootGroup` 形式のため、ファイル追加・削除時に project.pbxproj の編集は不要

## ファイル構成

```
SwiftuiCheatSheet/
├── CheatSheetApp.swift          # @main エントリーポイント。ContentView() を呼ぶ
├── ContentView.swift            # Destination enum の定義 + TopScreen() のラッパー
│
├── screens/                         # トップ画面 + View カテゴリ配下の画面
│   ├── TopScreen.swift              # トップページ（目次）。NavigationStack + グリッドカード + 検索バー
│   │                                # TopContent（グリッド UI）と TopScreen（NavigationStack）を同一ファイルに定義
│   ├── ViewScreen.swift             # View カテゴリの一覧画面
│   ├── TextScreen.swift
│   ├── LabelScreen.swift
│   ├── TextEditorScreen.swift
│   ├── ImageScreen.swift
│   ├── ShapeScreen.swift
│   ├── ProgressViewScreen.swift
│   ├── MapScreen.swift
│   ├── CardScreen.swift
│   └── content/                     # ViewScreen で使う部品
│       ├── Card.swift
│       ├── CutImage.swift
│       └── NetworkImage.swift
│
├── contents/
│   ├── layout/
│   │   ├── LayoutScreen.swift       # Layout カテゴリの一覧画面
│   │   ├── VStackScreen.swift
│   │   ├── HStackScreen.swift
│   │   ├── ZStackScreen.swift
│   │   ├── LazyVStackScreen.swift
│   │   ├── LazyHStackScreen.swift
│   │   ├── LazyVGridScreen.swift
│   │   ├── LazyHGridScreen.swift
│   │   └── content/                 # グリッド系の部品
│   │       ├── FixedVGrid.swift
│   │       ├── FlexibleVGrid.swift
│   │       ├── AdaptiveVGrid.swift
│   │       └── AsyncImageVGrid.swift
│   │
│   ├── input/
│   │   ├── InputScreen.swift        # Input カテゴリの一覧画面
│   │   ├── ButtonScreen.swift
│   │   ├── DatePickerScreen.swift
│   │   ├── PickerScreen.swift
│   │   ├── SliderScreen.swift
│   │   ├── StepperScreen.swift
│   │   ├── TextFieldScreen.swift
│   │   └── ToggleScreen.swift
│   │
│   ├── list/
│   │   ├── ListScreen.swift         # List カテゴリの一覧画面
│   │   └── ListCheatSheet.swift     # 未使用（準備中）
│   │
│   ├── containers/
│   │   ├── ContainersScreen.swift   # Containers カテゴリの一覧画面
│   │   ├── NavigationViewScreen.swift
│   │   ├── TabViewScreen.swift
│   │   └── content/
│   │       └── AsyncTabView.swift
│   │
│   ├── alert/
│   │   ├── AlertScreen.swift        # Alert カテゴリの一覧画面
│   │   └── AlertDetailScreen.swift
│   │
│   ├── actionsheets/
│   │   ├── ActionSheetsScreen.swift     # ActionSheets カテゴリの一覧画面
│   │   └── ActionSheetsDetailScreen.swift
│   │
│   ├── state/
│   │   ├── StateScreen.swift
│   │   └── content/
│   │       ├── CountState.swift
│   │       └── ChangeChainState.swift
│   │
│   ├── extention/
│   │   └── ExtensionScreen.swift
│   │
│   └── resource/
│       └── ResourceScreen.swift
│
└── views/                           # 共通 UI 部品
    ├── TabBarScreen.swift           # タブ切り替えUI（各 XxxScreen で使用）
    ├── ScrollableTabBar.swift
    ├── TabButton.swift
    ├── TabData.swift
    ├── CodeDescription.swift
    └── CodeWebView.swift
```

## 命名規則
- **画面（Screen）**: `XxxScreen` — NavigationStack で遷移する1画面を表す
- カテゴリ一覧画面は `XxxScreen`（例: `ViewScreen`, `LayoutScreen`）
- 個別チートシート画面も `XxxScreen`（例: `TextScreen`, `ButtonScreen`）
- Alert/ActionSheets はカテゴリ画面と詳細画面が分かれる: `AlertScreen` / `AlertDetailScreen`

## ナビゲーション構造
`ContentView.swift` の `Destination` enum がすべての遷移先を定義。
`screens/TopScreen.swift` の `.navigationDestination` で enum の各 case に対応する画面を返す。

## 各画面のパターン
ほとんどの `XxxScreen` は `TabBarScreen(allTabs: tabs)` を返す構成:
```swift
private let tabs: [TabData] = [ ... ]

struct XxxScreen: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}
```
カテゴリ一覧画面（`ViewScreen` 等）は `List + Button` で子画面へ遷移する構成。
