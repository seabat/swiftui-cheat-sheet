import SwiftUI

enum Destination: Hashable {
    case viewContent
    case layoutContent
    case inputContent
    case listContent
    case containersContent
    case alertContent
    case actionSheetsContent
    case stateCheatSheet
    case extentionCheatSheet
    case resourceCheetSheet
    // View セクション配下
    case textCheatSheet
    case labelCheatSheet
    case textEditorCheatSheet
    case imageCheatSheet
    case shapeCheatSheet
    case progressViewCheatSheet
    case mapCheatSheet
    case cardCheatSheet
    // Layout セクション配下
    case vStackCheatSheet
    case hStackCheatSheet
    case zStackCheatSheet
    case lazyVStackCheatSheet
    case lazyHStackCheatSheet
    case lazyVGridCheatSheet
    case lazyHGridCheatSheet
    // Input セクション配下
    case buttonCheatSheet
    case datePickerCheatSheet
    case pickerCheatSheet
    case sliderCheatSheet
    case stepperCheatSheet
    case textFieldCheatSheet
    case toggleCheatSheet
    // Containers セクション配下
    case navigationViewCheatSheet
    case tabViewCheatSheet
    // Alert セクション配下
    case alertCheatSheet
    // ActionSheets セクション配下
    case actionSheetsCheatSheet
    // List セクション配下
    case listTypesList
    case listTypesForEach
    case listTypesScrollView
    case listFeaturesSections
    case listFeaturesHeadersAndFooters
    case listFeaturesListStyles
}

struct ContentView: View {
    var body: some View {
        TopScreen()
    }
}

#Preview {
    ContentView()
}
