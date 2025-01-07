//import SwiftUI
//
//struct InnerTextF: View {
//    var body: some View {
//        VStack {
//      
//            Text("largeTitle")
//                .font(.largeTitle)
//            Spacer()
//            Text("SF Font Width Styles")
//                .font(.system(size: 20).width(.compressed))
//            Spacer()
//            Text("SF Font Width Styles")
//                .font(.system(size: 20).width(.expanded))
//            Spacer()
//            Text("SF Font Width Styles")
//                .font(.system(size: 20).width(.condensed))
//            
//            Text(".font(.system(size: 20).width(.condensed)")
//                .font(.headline)
//            
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    InnerTextF()
//}

import SwiftUI

struct BlendingModesView: View {
    @State var position: CGSize = .zero
    
    var body: some View {
        ZStack {
            wallpaper
            
            ZStack {
                text.foregroundColor(.white)
                    .blendMode(.difference)
                    .overlay(text.blendMode(.hue))
                    .overlay(text.foregroundColor(.white).blendMode(.overlay))
                    .overlay(text.foregroundColor(.black).blendMode(.overlay))
            }
        }
    }
    
    var wallpaper: some View {
        AsyncImage(url: URL(string: "https://plus.unsplash.com/premium_vector-1711987789332-1b9476645e64?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")) { phase in
            switch phase {
            case .empty:
                ProgressView() // Show loading indicator while the image is loading
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
            case .failure:
                Color.gray // Show a fallback color if the image fails to load
            @unknown default:
                Color.gray
            }
        }
    }
    
    var text: some View {
        Text("One place to stack all your cards")
            .font(.system(size: 48, weight: .heavy))
            .bold()
            .padding()
            .frame(width: 390)
    }
}

#Preview {
    BlendingModesView()
}
