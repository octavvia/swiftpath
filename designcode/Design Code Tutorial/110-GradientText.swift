import SwiftUI

struct GradientTextView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
            Text("Hello, world!")
            
        }
        .font(.system(size: 60))
        .fontWeight(.bold)
        .foregroundStyle(
            LinearGradient(colors: [.blue, .purple], startPoint:
            .topLeading, endPoint: .bottomTrailing
            )
        )
    }
}



#Preview{
    GradientTextView()
}
