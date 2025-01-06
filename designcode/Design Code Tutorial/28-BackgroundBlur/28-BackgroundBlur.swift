import SwiftUI

struct BackGroundBlurView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .bottom, endPoint: .topTrailing)
            Rectangle()
                .frame(width: 300,height: 300)
            VisualEffectBlur(blurStyle: .light)
            Text("Hello!")
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .font(.largeTitle).bold()
            
         }
        .ignoresSafeArea()
    }
}

#Preview {
    BackGroundBlurView()
}
