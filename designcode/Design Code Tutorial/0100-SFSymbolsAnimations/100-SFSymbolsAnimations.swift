import SwiftUI

struct AnimatedSymbolsScreen: View {
    @State private var isTapped = false
    @State private var isPlaying = false

    var body: some View {
        VStack(spacing: 40) {
            // Title
            Text("SF Symbols Animations")
                .font(.largeTitle)
                .bold()

            // Pulse Animation
            VStack {
                Text("Pulse Animation")
                    .font(.headline)
                Image(systemName: "ellipsis")
                    .symbolEffect(.pulse)
                    .font(.system(size: 50))
            }

            // Variable Color Animation
            VStack {
                Text("Variable Color")
                    .font(.headline)
                Image(systemName: "wand.and.rays")
                    .symbolEffect(.variableColor.iterative.reversing)
                    .font(.system(size: 50))
            }

            // Bounce Animation
            VStack {
                Text("Bounce Animation")
                    .font(.headline)
                Image(systemName: "bell")
                    .symbolEffect(.bounce, value: isTapped)
                    .font(.system(size: 50))
                    .onTapGesture {
                        isTapped.toggle()
                    }
            }

            // Replace Animation
            VStack {
                Text("Replace Animation")
                    .font(.headline)
                Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                    .contentTransition(.symbolEffect(.replace))
                    .font(.system(size: 50))
                    .onTapGesture {
                        isPlaying.toggle()
                    }
            }

            // Foreground Style
            VStack {
                Text("Foreground Style")
                    .font(.headline)
                HStack(spacing: 30) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Image(systemName: "heart.fill")
                        .foregroundStyle(.red)
                    Image(systemName: "cloud.fill")
                        .foregroundStyle(.blue)
                }
                .font(.system(size: 50))
            }
        }
        .padding()
        .preferredColorScheme(.dark) // Enable dark mode for better visibility
    }
}

struct AnimatedSymbolsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedSymbolsScreen()
    }
}
