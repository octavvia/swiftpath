import SwiftUI

struct LayoutView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 8.0) {
                Circle()
                    .fill(Color.gray)
                    .frame(width: 44.0, height: 44.0)
                Text("SwiftUI for iOS 14")
                    .font(.title)
                    .fontWeight(.bold)
                Text("20 videos")
            }
            .padding(.all)
            .background(Color.blue)
            .cornerRadius(20.0)
        }
    }
}

#Preview {
    LayoutView()
}
