# ファイル構成

```
SwiftuiCheatSheet/
├── CheatSheetApp.swift          # @main エントリーポイント。ContentView() を呼ぶ
├── ContentView.swift            # Destination enum の定義 + TopScreen() のラッパー
│
├── screens/
│   └── TopScreen.swift          # トップページ（目次）。NavigationStack + グリッドカード + 検索バー
│                                # TopContent（グリッド UI）と TopScreen（NavigationStack）を同一ファイルに定義
│
├── contents/
│   ├── view/
│   │   ├── ViewCategoryScreen.swift     # View カテゴリの一覧画面
│   │   ├── TextScreen.swift
│   │   ├── LabelScreen.swift
│   │   ├── TextEditorScreen.swift
│   │   ├── ImageScreen.swift
│   │   ├── ShapeScreen.swift
│   │   ├── ProgressViewScreen.swift
│   │   ├── MapScreen.swift
│   │   ├── CardScreen.swift
│   │   └── content/
│   │       ├── Card.swift
│   │       ├── CutImage.swift
│   │       └── NetworkImage.swift
│   │
│   ├── layout/
│   │   ├── LayoutCategoryScreen.swift
│   │   ├── VStackScreen.swift
│   │   ├── HStackScreen.swift
│   │   ├── ZStackScreen.swift
│   │   ├── LazyVStackScreen.swift
│   │   ├── LazyHStackScreen.swift
│   │   ├── LazyVGridScreen.swift
│   │   ├── LazyHGridScreen.swift
│   │   └── content/
│   │       ├── FixedVGrid.swift
│   │       ├── FlexibleVGrid.swift
│   │       ├── AdaptiveVGrid.swift
│   │       └── AsyncImageVGrid.swift
│   │
│   ├── input/
│   │   ├── InputCategoryScreen.swift
│   │   ├── ButtonScreen.swift
│   │   ├── DatePickerScreen.swift
│   │   ├── PickerScreen.swift
│   │   ├── SliderScreen.swift
│   │   ├── StepperScreen.swift
│   │   ├── TextFieldScreen.swift
│   │   └── ToggleScreen.swift
│   │
│   ├── list/
│   │   ├── ListCategoryScreen.swift
│   │   └── ListCheatSheet.swift     # 未使用（準備中）
│   │
│   ├── containers/
│   │   ├── ContainersCategoryScreen.swift
│   │   ├── NavigationViewScreen.swift
│   │   ├── TabViewScreen.swift
│   │   └── content/
│   │       └── AsyncTabView.swift
│   │
│   ├── alert/
│   │   ├── AlertCategoryScreen.swift
│   │   └── AlertDetailScreen.swift
│   │
│   ├── actionsheets/
│   │   ├── ActionSheetsCategoryScreen.swift
│   │   └── ActionSheetsDetailScreen.swift
│   │
│   ├── state/
│   │   ├── StateCategoryScreen.swift
│   │   └── content/
│   │       ├── CountState.swift
│   │       └── ChangeChainState.swift
│   │
│   ├── extention/
│   │   └── ExtensionCategoryScreen.swift
│   │
│   └── resource/
│       └── ResourceCategoryScreen.swift
│
└── views/                           # 共通 UI 部品
    ├── TabBarScreen.swift           # タブ切り替えUI（各 XxxScreen で使用）
    ├── ScrollableTabBar.swift
    ├── TabButton.swift
    ├── TabData.swift
    ├── CodeDescription.swift
    └── CodeWebView.swift
```
