

import SwiftUI

struct MaxWidthView: View {
    var body: some View {
        VStack {
            Rectangle().fill(Color.green).ignoresSafeArea()
        }
        .overlay(
            Image(systemName: "xmark")
                .frame(width: 32, height: 32)
                .background(Circle().stroke(lineWidth: 3))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
        )
    }
}

#Preview {
    MaxWidthView()
}
