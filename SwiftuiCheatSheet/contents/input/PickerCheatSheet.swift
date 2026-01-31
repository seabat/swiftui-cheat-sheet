import SwiftUI

private let tabs: [TabData] = [
    TabData(
        title: "Segmented",
        description: "SegmentedPickerStyle のピッカー。",
        contentView: AnyView(
            SamplePicker(style: SegmentedPickerStyle())
        ),
        codeView: AnyView(
            CodeWebView(code: """
            struct SamplePicker: View {
                @State var timerValue = 10
                var body: some View {
                    VStack {
                        Picker(selection: $timerValue) {
                            Text("10").tag(10)
                            Text("20").tag(20)
                            Text("30").tag(30)
                        } label: {
                            Text("Picker")
                        }.pickerStyle(
                            SegmentedPickerStyle()
                        )
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "Wheel",
        description: "WheelPickerStyle のピッカー。",
        contentView: AnyView(
            SamplePicker(style: WheelPickerStyle())
        ),
        codeView: AnyView(
            CodeWebView(code: """
            struct SamplePicker: View {
                @State var timerValue = 10
                var body: some View {
                    VStack {
                        Picker(selection: $timerValue) {
                            Text("10").tag(10)
                            Text("20").tag(20)
                            Text("30").tag(30)
                        } label: {
                            Text("Picker")
                        }.pickerStyle(
                            WheelPickerStyle()
                        )
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "Menu",
        description: "MenuPickerStyle のピッカー。",
        contentView: AnyView(
            SamplePicker(style: MenuPickerStyle() )
        ),
        codeView: AnyView(
            CodeWebView(code: """
            struct SamplePicker: View {
                @State var timerValue = 10
                var body: some View {
                    VStack {
                        Picker(selection: $timerValue) {
                            Text("10").tag(10)
                            Text("20").tag(20)
                            Text("30").tag(30)
                        } label: {
                            Text("Picker")
                        }.pickerStyle(
                            MenuPickerStyle()
                        )
                    }
                }
            }
            """)
        )
    ),
    TabData(
        title: "イベント",
        description: "SegmentedPickerStyle のピッカー。アイテム切り替えイベントをハンドリング。",
        contentView: AnyView(
            SamplePickerWithEvent(style: MenuPickerStyle() )
        ),
        codeView: AnyView(
            CodeWebView(code: """
            struct SamplePickerWithEvent<S: PickerStyle>: View {
                // NOTE: struct のイニシャライザで他のクラスや構造体のインスタンスを受け取る際に
                //       ジェネリックを使用することが多い
                let style: S
                
                @State var timerValue = 10
                
                @State private var showingSnackbar = false
                @State private var snackbarMessage = ""
                
                var body: some View {
                    ZStack {
                        Picker(selection: $timerValue) {
                            Text("10").tag(10)
                            Text("20").tag(20)
                            Text("30").tag(30)
                        } label: {
                            Text("Picker")
                        }.pickerStyle(
                            style
                        )
                        .background(.white)
                        // timerValueが変更されたときに実行される
                        .onChange(of: timerValue) { oldValue, newValue in
                            snackbarMessage = "\\(newValue)秒が選択されました。"
                            showingSnackbar = true // スナックバーを表示
                            // 少し遅れてスナックバーを非表示にする
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // 2秒後に非表示
                                showingSnackbar = false
                            }
                        }
                        .frame(maxHeight: .infinity, alignment: .top) // 上部に配置

                        if showingSnackbar {
                            Text(snackbarMessage)
                                .padding()
                                .background(Color.black.opacity(0.7))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .transition(.opacity)
                                .animation(.easeOut(duration: 0.3), value: showingSnackbar)
                                .padding(.bottom, 50) // 画面下端からのオフセット
                                .frame(maxHeight: .infinity, alignment: .bottom) // 下部に配置
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray.opacity(0.2))
                }
            }
            """)
        )
    ),
]

struct SamplePicker<S: PickerStyle>: View {
    // NOTE: struct のイニシャライザで他のクラスや構造体のインスタンスを受け取る際に
    //       ジェネリックを使用することが多い
    let style: S
    @State var timerValue = 10
    var body: some View {
        VStack {
            Picker(selection: $timerValue) {
                Text("10").tag(10)
                Text("20").tag(20)
                Text("30").tag(30)
            } label: {
                Text("Picker")
            }.pickerStyle(
                style
            )
        }
    }
}

struct SamplePickerWithEvent<S: PickerStyle>: View {
    // NOTE: struct のイニシャライザで他のクラスや構造体のインスタンスを受け取る際に
    //       ジェネリックを使用することが多い
    let style: S
    
    @State var timerValue = 10
    
    @State private var showingSnackbar = false
    @State private var snackbarMessage = ""
    
    var body: some View {
        ZStack {
            Picker(selection: $timerValue) {
                Text("10").tag(10)
                Text("20").tag(20)
                Text("30").tag(30)
            } label: {
                Text("Picker")
            }.pickerStyle(
                style
            )
            .background(.white)
            // timerValueが変更されたときに実行される
            .onChange(of: timerValue) { oldValue, newValue in
                snackbarMessage = "\(newValue)秒が選択されました。"
                showingSnackbar = true // スナックバーを表示
                // 少し遅れてスナックバーを非表示にする
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // 2秒後に非表示
                    showingSnackbar = false
                }
            }
            .frame(maxHeight: .infinity, alignment: .top) // 上部に配置

            if showingSnackbar {
                Text(snackbarMessage)
                    .padding()
                    .background(Color.black.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .transition(.opacity)
                    .animation(.easeOut(duration: 0.3), value: showingSnackbar)
                    .padding(.bottom, 50) // 画面下端からのオフセット
                    .frame(maxHeight: .infinity, alignment: .bottom) // 下部に配置
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
    }
}

struct PickerCheatSheet: View {
    var body: some View {
        TabBarScreen(allTabs: tabs)
    }
}

#Preview {
    PickerCheatSheet()
}
