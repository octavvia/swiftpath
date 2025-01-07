import SwiftUI

struct StatusBarView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Top: \(geometry.safeAreaInsets.top)")
                Text("Bottom: \(geometry.safeAreaInsets.bottom)")
                Text("Leading: \(geometry.safeAreaInsets.leading)")
                Text("Trailing: \(geometry.safeAreaInsets.trailing)")
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .font(.title).bold()
            .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
            
        }
    }
}

#Preview {
    StatusBarView()
}
