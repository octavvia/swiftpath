import SwiftUI
import SwiftUITrackableScrollView

struct OnScrollCiew: View {
    @State var scrollViewContentOffset = CGFloat(0)
    var body: some View {
        TrackableScrollView(.vertical,showIndicators: false,contentOffset: $scrollViewContentOffset){
            Text("\(scrollViewContentOffset)")
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            
        }
        .onChange(of: scrollViewContentOffset, { oldValue, newValue in
            print(scrollViewContentOffset)
        })
         
            
        .padding()
    }
}

#Preview {
    OnScrollCiew()
}
