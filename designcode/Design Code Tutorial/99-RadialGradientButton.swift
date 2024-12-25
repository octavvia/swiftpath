import SwiftUI

struct CustomButton: View {
    @State private var appear = false

    var body: some View {
        ZStack {
            // Glow background with animation
            ZStack {
                AngularGradient(colors: [.red, .blue, .teal, .red], center: .center, angle: .degrees(appear ? 360 : 0))
                    .cornerRadius(30)
                    .blur(radius: 15)
                AngularGradient(colors: [.white, .blue, .teal, .white], center: .center, angle: .degrees(appear ? 360 : 0))
                    .cornerRadius(30)
                    .blur(radius: 15)
            }
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    appear = true
                }
            }

            // Custom button shape
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 64, height: 44)
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            Color(#colorLiteral(red: 0.3408924341, green: 0.3429200053, blue: 0.3997989893, alpha: 1)),
                            Color(#colorLiteral(red: 0.02498620935, green: 0.04610963911, blue: 0.08353561908, alpha: 1))
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .shadow(color: Color.white.opacity(0.2), radius: 1, x: 1, y: 1) // Inner shadow approximation
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 4) // Drop shadow
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 1)
                )
                .overlay(
                    Image(systemName: "circle")
                        .foregroundStyle(.white)
                )
        }
        .frame(width: 100, height: 100) // Enclose within a suitable frame for the glow
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
            .preferredColorScheme(.dark) // Use dark mode for better visibility
    }
}
 
