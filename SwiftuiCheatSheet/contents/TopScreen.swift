import SwiftUI

struct TopScreen: View {
    @State private var path = [Destination]()

    var body: some View {
        NavigationStack(path: $path) {
            TopContent(path: $path)
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .viewCategoryScreen:
                    ViewCategoryScreen(path: $path)
                case .layoutCategoryScreen:
                    LayoutCategoryScreen(path: $path)
                case .inputCategoryScreen:
                    InputCategoryScreen(path: $path)
                case .listCategoryScreen:
                    ListCategoryScreen(path: $path)
                case .containersCategoryScreen:
                    ContainersCategoryScreen(path: $path)
                case .alertCategoryScreen:
                    AlertCategoryScreen(path: $path)
                case .actionSheetsCategoryScreen:
                    ActionSheetsCategoryScreen(path: $path)
                case .stateCategoryScreen:
                    StateCategoryScreen()
                case .extentionCategoryScreen:
                    ExtensionCategoryScreen()
                case .resourceCategoryScreen:
                    ResourceCategoryScreen()
                case .textScreen:
                    TextScreen()
                case .labelScreen:
                    LabelScreen()
                case .textEditorScreen:
                    TextEditorScreen()
                case .imageScreen:
                    ImageScreen()
                case .shapeScreen:
                    ShapeScreen()
                case .progressViewScreen:
                    ProgressViewScreen()
                case .mapScreen:
                    MapScreen()
                case .cardScreen:
                    CardScreen()
                case .vStackScreen:
                    VStackScreen()
                case .vStackPatternScreen:
                    VStackPatternScreen()
                case .hStackScreen:
                    HStackScreen()
                case .zStackScreen:
                    ZStackScreen()
                case .lazyVStackScreen:
                    LazyVStackScreen()
                case .lazyHStackScreen:
                    LazyHStackScreen()
                case .lazyVGridScreen:
                    LazyVGridScreen()
                case .lazyHGridScreen:
                    LazyHGridScreen()
                case .buttonScreen:
                    ButtonScreen()
                case .datePickerScreen:
                    DatePickerScreen()
                case .pickerScreen:
                    PickerScreen()
                case .sliderScreen:
                    SliderScreen()
                case .stepperScreen:
                    StepperScreen()
                case .textFieldScreen:
                    TextFieldScreen()
                case .toggleScreen:
                    ToggleScreen()
                case .navigationViewScreen:
                    NavigationViewScreen()
                case .tabViewScreen:
                    TabViewScreen()
                case .alertDetailScreen:
                    AlertDetailScreen()
                case .actionSheetsDetailScreen:
                    ActionSheetsDetailScreen()
                case .listDetailScreen:
                    Text("List")
                case .listForEachScreen:
                    Text("ForEach")
                case .listcrollViewScreen:
                    Text("ScrollView")
                case .listSectionsScreen:
                    Text("Sections")
                case .listHeadersAndFootersScreen:
                    Text("Headers and Footers")
                case .listListStylesScreen:
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
    CategoryItem(title: "View",           icon: "rectangle.on.rectangle",     color: .blue,   destination: .viewCategoryScreen),
    CategoryItem(title: "Layout",         icon: "rectangle.3.group",           color: .green,  destination: .layoutCategoryScreen),
    CategoryItem(title: "Input",          icon: "hand.tap",                    color: .orange, destination: .inputCategoryScreen),
    CategoryItem(title: "List",           icon: "list.bullet",                 color: .purple, destination: .listCategoryScreen),
    CategoryItem(title: "Containers",     icon: "rectangle.stack",             color: .teal,   destination: .containersCategoryScreen),
    CategoryItem(title: "Alert",          icon: "bell.badge",                  color: .red,    destination: .alertCategoryScreen),
    CategoryItem(title: "Action Sheets",  icon: "list.bullet.rectangle",       color: .pink,   destination: .actionSheetsCategoryScreen),
    CategoryItem(title: "State",          icon: "arrow.3.trianglepath",        color: .indigo, destination: .stateCategoryScreen),
    CategoryItem(title: "Extension",      icon: "puzzlepiece.extension",       color: .brown,  destination: .extentionCategoryScreen),
    CategoryItem(title: "Resource",       icon: "book.closed",                 color: .mint,   destination: .resourceCategoryScreen),
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
