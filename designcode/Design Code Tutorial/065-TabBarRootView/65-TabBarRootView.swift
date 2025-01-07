import SwiftUI

struct TabBarRootView: View {
    var columns = [GridItem(.adaptive(minimum: 159), spacing: 16)]
    
    var body: some View {
        ScrollView {
            Text("Home")
                .font(.largeTitle).bold()
                .padding(.horizontal, 20)
                .padding(.top, 17)
            
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(0..<10) { number in
                    NavigationLink(destination: ChildView(courseTitle: "SwiftUI for iOS 14")) {
                        CoursedCard(
                            image: "illustration",
                            title: "SwiftUI for iOS 14",
                            hours: "20 sections - 3 hours",
                            colors: [.pink, .purple],
                            logo: "swift-logo"
                        )
                    }
                }
            }
            .padding(20)
        }
        .navigationBarHidden(true)
    }
}

struct TabBarRootView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarRootView()
    }
}
