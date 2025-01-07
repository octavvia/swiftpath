import SwiftUI

struct NumericView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Content Transition")

            HStack(spacing: 30) {
                Button(action: { count -= 1 }) {
                    Image(systemName: "minus.circle.fill")
                }

                Text("\(count)")
                    .font(.system(size: 60, weight: .bold, design: .rounded))
                    .contentTransition(.numericText(countsDown: true))
                    .animation(.default, value: count)

                Button(action: { count += 1 }) {
                    Image(systemName: "plus.circle.fill")
                }
            }
            .padding()
        }
        .font(.system(.largeTitle, design: .rounded))
        .bold()
    }
}

#Preview {
    NumericView()
}
