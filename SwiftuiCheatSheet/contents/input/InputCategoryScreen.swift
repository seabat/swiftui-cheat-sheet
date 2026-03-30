import SwiftUI

struct InputCategoryScreen: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("Button") { path.append(.buttonScreen) }
                Button("DatePicker") { path.append(.datePickerScreen) }
                Button("Picker") { path.append(.pickerScreen) }
                Button("Slider") { path.append(.sliderScreen) }
                Button("Stepper") { path.append(.stepperScreen) }
                Button("TextField") { path.append(.textFieldScreen) }
                Button("Toggle") { path.append(.toggleScreen) }
            }
        }
        .navigationTitle("Input")
    }
}

#Preview {
    NavigationStack {
        InputCategoryScreen(path: .constant([]))
    }
}
