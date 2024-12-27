import SwiftUI

// MARK: - Main ContentView
struct SpecificCornerRadius: View {
    var body: some View {
        VStack(spacing: 20) {
            // Example using UnevenRoundedRectangle (Xcode 15+)
            Text("UnevenRoundedRectangle Example")
                .font(.headline)
            
            UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 30, topTrailing: 30))
                .frame(width: 200, height: 200)
                .foregroundColor(.blue)
                .overlay(
                    Text("Xcode 15+")
                        .foregroundColor(.white)
                        .bold()
                )
            
            // Example using View Extension (Xcode 14 and earlier)
            Text("Custom CornerRadius Example")
                .font(.headline)
            
            Rectangle()
                .frame(width: 200, height: 200)
                .cornerRadius(50, corners: [.topLeft, .bottomRight])
                .foregroundColor(.green)
                .overlay(
                    Text("Xcode 14-")
                        .foregroundColor(.white)
                        .bold()
                )
        }
        .padding()
    }
}

// MARK: - View Extension for Corner Radius (Xcode 14 and earlier)
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

// MARK: - Custom Shape for Specific Corner Radius
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

// MARK: - Preview
struct SpecificCornerRadius_Previews: PreviewProvider {
    static var previews: some View {
        SpecificCornerRadius()
    }
}

