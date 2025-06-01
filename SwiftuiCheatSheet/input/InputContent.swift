import SwiftUI

struct InputContent: View {
    var body: some View {
        List {
            Section(header: Text("Basic")) {
                NavigationLink(destination: ButtonCheatSheet()) {
                    Text("Button")
                }
                NavigationLink(destination: DatePickerCheatSheet()) {
                    Text("DatePicker")
                }
                NavigationLink(destination: PickerCheatSheet()) {
                    Text("Picker")
                }
                NavigationLink(destination: SliderCheatSheet()) {
                    Text("Slider")
                }
                NavigationLink(destination: PickerCheatSheet()) {
                    Text("Picker")
                }
                NavigationLink(destination: StepperCheatSheet()) {
                    Text("Stepper")
                }
                NavigationLink(destination: TextFieldCheatSheet()) {
                    Text("TextField")
                }
                NavigationLink(destination: ToggleCheatSheet()) {
                    Text("Toggle")
                }
            }
            
            Section(header: Text("Sample")) {
                NavigationLink(destination: ButtonCheatSheet()) {
                    Text("Button")
                }
                NavigationLink(destination: DatePickerCheatSheet()) {
                    Text("DatePicker")
                }
                NavigationLink(destination: PickerCheatSheet()) {
                    Text("Picker")
                }
                NavigationLink(destination: SliderCheatSheet()) {
                    Text("Slider")
                }
                NavigationLink(destination: PickerCheatSheet()) {
                    Text("Picker")
                }
                NavigationLink(destination: StepperCheatSheet()) {
                    Text("Stepper")
                }
                NavigationLink(destination: TextFieldCheatSheet()) {
                    Text("TextField")
                }
                NavigationLink(destination: ToggleCheatSheet()) {
                    Text("Toggle")
                }
            }
        }
        .navigationTitle("Input")
    }
}

#Preview {
    NavigationView {
        InputContent()
    }
} 
