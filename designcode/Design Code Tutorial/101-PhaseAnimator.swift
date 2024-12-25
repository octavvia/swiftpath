import SwiftUI

struct StarView: View {
    @State private var isTapped = false

    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.green)
                .frame(width: 200, height: 200)
                .phaseAnimator([1, 2, 3, 4, 5], trigger: isTapped) { content, phase in
                    content
                        .rotationEffect(.degrees(phase * 360))
                        .opacity(phase == 2 ? 0.5 : 1.0)
                } animation: { phase in
                    switch phase {
                    case 1: return .linear(duration: 1)
                    case 2: return .easeInOut(duration: 2)
                    case 3: return .spring(response: 0.5, dampingFraction: 0.3, blendDuration: 1)
                    default: return .easeInOut
                    }
                }
                .onTapGesture {
                    isTapped.toggle()
                }
        }
    }
}

#Preview {
    StarView()
}
