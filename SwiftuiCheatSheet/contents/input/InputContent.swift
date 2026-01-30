import SwiftUI

struct InputContent: View {
    @Binding var path: [Destination]

    var body: some View {
        List {
            Section(header: Text("Basic")) {
                Button("Button") { path.append(.buttonCheatSheet) }
                Button("DatePicker") { path.append(.datePickerCheatSheet) }
                Button("Picker") { path.append(.pickerCheatSheet) }
                Button("Slider") { path.append(.sliderCheatSheet) }
                Button("Picker") { path.append(.pickerCheatSheet) }
                Button("Stepper") { path.append(.stepperCheatSheet) }
                Button("TextField") { path.append(.textFieldCheatSheet) }
                Button("Toggle") { path.append(.toggleCheatSheet) }
            }

            Section(header: Text("Sample")) {
                Button("Button") { path.append(.buttonCheatSheet) }
                Button("DatePicker") { path.append(.datePickerCheatSheet) }
                Button("Picker") { path.append(.pickerCheatSheet) }
                Button("Slider") { path.append(.sliderCheatSheet) }
                Button("Picker") { path.append(.pickerCheatSheet) }
                Button("Stepper") { path.append(.stepperCheatSheet) }
                Button("TextField") { path.append(.textFieldCheatSheet) }
                Button("Toggle") { path.append(.toggleCheatSheet) }
            }
        }
        .navigationTitle("Input")
    }
}

#Preview {
    NavigationStack {
        InputContent(path: .constant([]))
    }
}
