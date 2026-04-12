import SwiftUI

enum Destination: Hashable {
    case viewCategoryScreen
    case layoutCategoryScreen
    case inputCategoryScreen
    case listCategoryScreen
    case containersCategoryScreen
    case alertCategoryScreen
    case actionSheetsCategoryScreen
    case stateCategoryScreen
    case extentionCategoryScreen
    case resourceCategoryScreen
    // View セクション配下
    case textScreen
    case labelScreen
    case textEditorScreen
    case imageScreen
    case shapeScreen
    case progressViewScreen
    case mapScreen
    case cardScreen
    // Layout セクション配下
    case vStackScreen
    case vStackPatternScreen
    case hStackScreen
    case zStackScreen
    case lazyVStackScreen
    case lazyHStackScreen
    case lazyVGridScreen
    case lazyHGridScreen
    // Input セクション配下
    case buttonScreen
    case datePickerScreen
    case pickerScreen
    case sliderScreen
    case stepperScreen
    case textFieldScreen
    case toggleScreen
    // Containers セクション配下
    case navigationViewScreen
    case tabViewScreen
    // Alert セクション配下
    case alertDetailScreen
    // ActionSheets セクション配下
    case actionSheetsDetailScreen
    // List セクション配下
    case listDetailScreen
    case listForEachScreen
    case listcrollViewScreen
    case listSectionsScreen
    case listHeadersAndFootersScreen
    case listListStylesScreen
}

struct ContentView: View {
    var body: some View {
        TopScreen()
    }
}

#Preview {
    ContentView()
}
