import SwiftUI

struct ShadowOpacityView: View {
    var body: some View {
        VStack {
            Text("App of the day")
                .font(.title).bold().foregroundStyle(.white)
                .shadow(radius: 1)
        }
        .frame(width: 300, height: 400)
        .background(.pink)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//        .shadow(radius: 20)
        .shadow(color: .pink.opacity(0.4), radius: 20, x: 0.0, y: 10)
        .shadow(color: .pink.opacity(0.6), radius: 5, x: 0.0, y: 2)
    }
}

#Preview {
    ShadowOpacityView()
}
