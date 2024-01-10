import SwiftUI

struct StackSpacerView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Hello, world!")
                        .font(.title)
                    HStack(alignment: .bottom, spacing: 16) {
                        Text("Hello, world!")
                            .font(.title)
                        Spacer()
                        Text("Second line")
                    }
                    Spacer()
                    Text("Second line")
                }
            }
            .padding()
            .frame(width: 320)
        }
    }
}

#Preview {
    StackSpacerView()
}
