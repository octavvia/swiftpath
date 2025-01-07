import SwiftUI

struct WidgetView: View {
    var padding: CGFloat = 5

    var body: some View {
        VStack(spacing: 8) {
            Text("PADDING")
                .foregroundColor(.white)
            Text("\(padding)")
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ContainerRelativeShape().fill(Color(.black).opacity(0.9)))
        .padding(padding)
    }
}


#Preview {
    WidgetView(padding: 100)
}
