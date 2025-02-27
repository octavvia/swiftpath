import SwiftUI

struct WheelPicker: View {
    @State private var number = 1
    var body: some View {
        Picker("Your age", selection: $number) {
            ForEach(1...100,id: \.self) { number in
                Text("\(number)")
            }
        }
        .pickerStyle(.wheel)
    }

}

#Preview {
    WheelPicker()
}
