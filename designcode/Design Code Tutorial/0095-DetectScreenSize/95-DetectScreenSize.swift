import SwiftUI

// PreferenceKey to store the size of a view
struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}

struct ScreenSize: View {
    // State variable to store the screen size
    @State private var screenSize: CGSize = .zero

    var body: some View {
        VStack {
            // Display the detected screen size
            Text("Screen Width: \(Int(screenSize.width))")
            Text("Screen Height: \(Int(screenSize.height))")
            
            Spacer()

            // Example Rectangle to demonstrate size detection
            Rectangle()
                .fill(Color.blue)
                .overlay(
                    GeometryReader { proxy in
                        // Use GeometryReader to detect and store size in PreferenceKey
                        Color.clear
                            .preference(key: SizePreferenceKey.self, value: proxy.size)
                    }
                )
                .frame(height: 200)
                .cornerRadius(16)
        }
        .padding()
        // Update the state variable with the detected size using .onPreferenceChange
        .onPreferenceChange(SizePreferenceKey.self) { value in
            screenSize = value
        }
        .background(Color.gray.opacity(0.2))
    }
}

#Preview{
    ScreenSize()
}


