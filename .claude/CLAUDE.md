# SwiftUI Cheat Sheet プロジェクト

## ビルド・プロジェクト設定
- ビルド: `xcodebuild -scheme SwiftuiCheatSheet -destination 'platform=iOS Simulator,name=iPhone 17' build`
- `.xcodeproj` は `PBXFileSystemSynchronizedRootGroup` 形式のため、ファイル追加・削除時に `project.pbxproj` の編集は不要

## ルール詳細
- ファイル構成 → `rules/file-structure.md`
- 命名規則・ナビゲーション → `rules/naming.md`
- 画面パターン → `rules/content-screen-patterns.md`
- カラー定義 → `rules/colors.md`
