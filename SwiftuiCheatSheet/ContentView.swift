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
    
    @State private var path = [Destination]()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Button("View") {
                    path.append(.viewContent)
                }
                Button("Layout") {
                    path.append(.layoutContent)
                }
                Button("Input") {
                    path.append(.inputContent)
                }
                Button("List") {
                    path.append(.listContent)
                }
                Button("Containers") {
                    path.append(.containersContent)
                }
                Button("Alert") {
                    path.append(.alertContent)
                }
                Button("action Sheets") {
                    path.append(.actionSheetsContent)
                }
                Button("State") {
                    path.append(.stateCheatSheet)
                }
                Button("Extention") {
                    path.append(.extentionCheatSheet)
                }
                Button("Resource") {
                    path.append(.resourceCheetSheet)
                }
            }
            .navigationTitle("Table of Contents")
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .viewContent:
                    ViewContent(path: $path)
                case .layoutContent:
                    LayoutContent(path: $path)
                case .inputContent:
                    InputContent(path: $path)
                case .listContent:
                    ListContent(path: $path)
                case .containersContent:
                    ContainersContent(path: $path)
                case .alertContent:
                    AlertContent(path: $path)
                case .actionSheetsContent:
                    ActionSheetsContent(path: $path)
                case .stateCheatSheet:
                    StateCheatSheet()
                case .extentionCheatSheet:
                    ExtentionCheatSheet()
                case .resourceCheetSheet:
                    ResourceCheetSheet()
                case .textCheatSheet:
                    TextCheatSheet()
                case .labelCheatSheet:
                    LabelCheatSheet()
                case .textEditorCheatSheet:
                    TextEditorCheatSheet()
                case .imageCheatSheet:
                    ImageCheatSheet()
                case .shapeCheatSheet:
                    ShapeCheatSheet()
                case .progressViewCheatSheet:
                    ProgressViewCheatSheet()
                case .mapCheatSheet:
                    MapCheatSheet()
                case .cardCheatSheet:
                    CardCheatSheet()
                case .vStackCheatSheet:
                    VStackCheatSheet()
                case .hStackCheatSheet:
                    HStackCheatSheet()
                case .zStackCheatSheet:
                    ZStackCheatSheet()
                case .lazyVStackCheatSheet:
                    LazyVStackCheatSheet()
                case .lazyHStackCheatSheet:
                    LazyHStackCheatSheet()
                case .lazyVGridCheatSheet:
                    LazyVGridCheatSheet()
                case .lazyHGridCheatSheet:
                    LazyHGridCheatSheet()
                case .buttonCheatSheet:
                    ButtonCheatSheet()
                case .datePickerCheatSheet:
                    DatePickerCheatSheet()
                case .pickerCheatSheet:
                    PickerCheatSheet()
                case .sliderCheatSheet:
                    SliderCheatSheet()
                case .stepperCheatSheet:
                    StepperCheatSheet()
                case .textFieldCheatSheet:
                    TextFieldCheatSheet()
                case .toggleCheatSheet:
                    ToggleCheatSheet()
                case .navigationViewCheatSheet:
                    NavigationViewCheatSheet()
                case .tabViewCheatSheet:
                    TabViewCheatSheet()
                case .alertCheatSheet:
                    AlertCheatSheet()
                case .actionSheetsCheatSheet:
                    ActionSheetsCheatSheet()
                case .listTypesList:
                    Text("List")
                case .listTypesForEach:
                    Text("ForEach")
                case .listTypesScrollView:
                    Text("ScrollView")
                case .listFeaturesSections:
                    Text("Sections")
                case .listFeaturesHeadersAndFooters:
                    Text("Headers and Footers")
                case .listFeaturesListStyles:
                    Text("List Styles")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
