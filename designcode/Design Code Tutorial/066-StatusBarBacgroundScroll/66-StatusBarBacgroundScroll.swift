import SwiftUI
import SwiftUITrackableScrollView
struct StatusBarBackgroundScroll: View {
    @State private var scrollViewContentOffset: CGFloat = .zero
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.blue.ignoresSafeArea()
            
            
            TrackableScrollView(.vertical, showIndicators: true, contentOffset: $scrollViewContentOffset) {
                Text("Hello world!")
                    .padding()
            }
            
            Rectangle()
                .foregroundColor(.white)
                .opacity(scrollViewContentOffset > 16 ? 1 : 0)
                .animation(.easeIn)
                .ignoresSafeArea()
                .frame(height: 0)
        }
        
    }
}


#Preview {
    StatusBarBackgroundScroll()
}
