//import SwiftUI
//import Lottie
//
//struct NLottieView: UIViewRepresentable {
// 
//    var name = "AnimationFile"
//    var loopMode: LottieLoopMode = .loop
//    func makeUIView(context: UIViewRepresentableContext<NLottieView>) -> some UIView {
//        let view = UIView(frame: .zero)
//        let animationView = LottieAnimationView()
//        let animation = LottieAnimation.named(name)
//        animationView.animation = animation
//        animationView.contentMode = .scaleAspectFill
//        animationView.loopMode = loopMode
//        animationView.play()
//        
//        animationView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(animationView)
//        
//        NSLayoutConstraint.activate([
//            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
//            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
//        ])
//        return view
//    }
//    
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        
//    }
//    
//}
//
//
//
