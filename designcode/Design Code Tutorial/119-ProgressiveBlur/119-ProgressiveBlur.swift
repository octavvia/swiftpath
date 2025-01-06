import SwiftUI

struct FrostedGlassBackgroundView: View {
    var body: some View {
        ZStack {
            // Dynamic colorful background
            ColorfulBackgroundView()
                .blur(radius: 30) // Add blur to the background
            
            // Frosted glass card
            VStack(alignment: .leading, spacing: 12) {
                TextField("What's the best way to learn SwiftUI?", text: .constant(""))
                    .padding()
                    .background(.ultraThinMaterial) // Frosted effect
                    .cornerRadius(12)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Learning Paths")
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)
                    
                    Text("""
                    We've been curating the content you need to master SwiftUI, design, and app development. Here's a little roadmap to guide your learning.
                    """)
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(12)
                
                Text("Start your journey with SwiftUI & freshness.")
                    .font(.footnote)
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding()
            .background(.ultraThinMaterial) // Card frosted background
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
    }
}

// Dynamic Colorful Background
struct ColorfulBackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [
                Color.purple.opacity(0.8),
                Color.blue.opacity(0.6),
                Color.orange.opacity(0.6),
                Color.red.opacity(0.6)
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .overlay(
            RadialGradient(
                gradient: Gradient(colors: [
                    Color.blue.opacity(0.4),
                    Color.clear
                ]),
                center: .center,
                startRadius: 50,
                endRadius: 300
            )
        )
    }
}

#Preview {
    FrostedGlassBackgroundView()
}
