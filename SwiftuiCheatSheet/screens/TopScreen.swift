import SwiftUI

struct TopScreen: View {
    @State private var path = [Destination]()

    var body: some View {
        NavigationStack(path: $path) {
            TopContent(path: $path)
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

fileprivate struct CategoryItem {
    let title: String
    let icon: String
    let color: Color
    let destination: Destination
}

private let categories: [CategoryItem] = [
    CategoryItem(title: "View",           icon: "rectangle.on.rectangle",     color: .blue,   destination: .viewContent),
    CategoryItem(title: "Layout",         icon: "rectangle.3.group",           color: .green,  destination: .layoutContent),
    CategoryItem(title: "Input",          icon: "hand.tap",                    color: .orange, destination: .inputContent),
    CategoryItem(title: "List",           icon: "list.bullet",                 color: .purple, destination: .listContent),
    CategoryItem(title: "Containers",     icon: "rectangle.stack",             color: .teal,   destination: .containersContent),
    CategoryItem(title: "Alert",          icon: "bell.badge",                  color: .red,    destination: .alertContent),
    CategoryItem(title: "Action Sheets",  icon: "list.bullet.rectangle",       color: .pink,   destination: .actionSheetsContent),
    CategoryItem(title: "State",          icon: "arrow.3.trianglepath",        color: .indigo, destination: .stateCheatSheet),
    CategoryItem(title: "Extension",      icon: "puzzlepiece.extension",       color: .brown,  destination: .extentionCheatSheet),
    CategoryItem(title: "Resource",       icon: "book.closed",                 color: .mint,   destination: .resourceCheetSheet),
]

fileprivate struct CategoryCard: View {
    let item: CategoryItem

    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: item.icon)
                .font(.system(size: 28))
                .foregroundStyle(.white)
                .frame(width: 56, height: 56)
                .background(item.color.gradient)
                .clipShape(RoundedRectangle(cornerRadius: 14))
            Text(item.title)
                .font(.headline)
                .foregroundStyle(.primary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct TopContent: View {
    @Binding var path: [Destination]
    @State private var searchText = ""

    private var filtered: [CategoryItem] {
        if searchText.isEmpty { return categories }
        return categories.filter {
            $0.title.localizedCaseInsensitiveContains(searchText)
        }
    }

    var body: some View {
        ScrollView {
            LazyVGrid(
                // .adaptive(minimum:) により画面幅に収まる最大列数を自動計算
                // iPhone縦: 2列 / iPhone横: 3〜4列 / iPad: 4〜5列
                columns: [GridItem(.adaptive(minimum: 150))],
                spacing: 16
            ) {
                ForEach(filtered, id: \.title) { item in
                    Button {
                        path.append(item.destination)
                    } label: {
                        CategoryCard(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .navigationTitle("SwiftUI Cheat Sheet")
        .searchable(text: $searchText, prompt: "カテゴリを検索")
    }
}

#Preview {
    TopScreen()
}
