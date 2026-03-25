import SwiftUI

struct TopScreen: View {
    @State private var path = [Destination]()

    var body: some View {
        NavigationStack(path: $path) {
            TopContent(path: $path)
            .navigationTitle("Table of Contents")
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .viewContent:
                    ViewScreen(path: $path)
                case .layoutContent:
                    LayoutScreen(path: $path)
                case .inputContent:
                    InputScreen(path: $path)
                case .listContent:
                    ListScreen(path: $path)
                case .containersContent:
                    ContainersScreen(path: $path)
                case .alertContent:
                    AlertScreen(path: $path)
                case .actionSheetsContent:
                    ActionSheetsScreen(path: $path)
                case .stateCheatSheet:
                    StateScreen()
                case .extentionCheatSheet:
                    ExtensionScreen()
                case .resourceCheetSheet:
                    ResourceScreen()
                case .textCheatSheet:
                    TextScreen()
                case .labelCheatSheet:
                    LabelScreen()
                case .textEditorCheatSheet:
                    TextEditorScreen()
                case .imageCheatSheet:
                    ImageScreen()
                case .shapeCheatSheet:
                    ShapeScreen()
                case .progressViewCheatSheet:
                    ProgressViewScreen()
                case .mapCheatSheet:
                    MapScreen()
                case .cardCheatSheet:
                    CardScreen()
                case .vStackCheatSheet:
                    VStackScreen()
                case .hStackCheatSheet:
                    HStackScreen()
                case .zStackCheatSheet:
                    ZStackScreen()
                case .lazyVStackCheatSheet:
                    LazyVStackScreen()
                case .lazyHStackCheatSheet:
                    LazyHStackScreen()
                case .lazyVGridCheatSheet:
                    LazyVGridScreen()
                case .lazyHGridCheatSheet:
                    LazyHGridScreen()
                case .buttonCheatSheet:
                    ButtonScreen()
                case .datePickerCheatSheet:
                    DatePickerScreen()
                case .pickerCheatSheet:
                    PickerScreen()
                case .sliderCheatSheet:
                    SliderScreen()
                case .stepperCheatSheet:
                    StepperScreen()
                case .textFieldCheatSheet:
                    TextFieldScreen()
                case .toggleCheatSheet:
                    ToggleScreen()
                case .navigationViewCheatSheet:
                    NavigationViewScreen()
                case .tabViewCheatSheet:
                    TabViewScreen()
                case .alertCheatSheet:
                    AlertDetailScreen()
                case .actionSheetsCheatSheet:
                    ActionSheetsDetailScreen()
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

struct TopContent: View {
    @Binding var path: [Destination]

    var body: some View {
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
    }
}

#Preview {
    TopScreen()
}
