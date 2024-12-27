import SwiftUI
import RiveRuntime

@main
struct AnimatedApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct RiveView: View {
    var body: some View {
        let button = RiveViewModel(fileName: "button", autoplay: false) // Button animation asset

        ZStack {
            // Background animation
            RiveViewModel(fileName: "shapes").view()
                .ignoresSafeArea() // Make the animation fill the screen
                .blur(radius: 30) // Add blur for aesthetic effect

            // Button animation
            button.view()
                .frame(width: 236, height: 64) // Set button size
                .overlay(
                    Label("Start the course", systemImage: "arrow.forward") // Add text and icon
                        .offset(x: 4, y: 4) // Offset to align properly
                        .font(.headline) // Use a headline font
                )
                .onTapGesture {
                    button.play(animationName: "active") // Play "active" animation on tap
                }
        }
    }
}


#Preview {
    RiveView()
}
