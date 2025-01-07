import SwiftUI

struct ThemeToggleView: View {
    @State private var isDarkMode = false // Track the current theme

    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.title)
                .padding()
                .foregroundColor(isDarkMode ? .white : .black) // Dynamic text color
            
            Spacer()
            
            Image(systemName: isDarkMode ? "moon.stars.fill" : "sun.max.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(isDarkMode ? .yellow : .orange) // Dynamic icon color
            
            Spacer()
            
            Toggle("Dark Mode", isOn: $isDarkMode) // Toggle for theme
                .padding()
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            
            Text("Current Theme: \(isDarkMode ? "Dark Mode" : "Light Mode")")
                .font(.headline)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isDarkMode ? Color.black : Color.white) // Dynamic background
        .edgesIgnoringSafeArea(.all) // Cover the entire screen
    }
}

#Preview{
    ThemeToggleView()
}
