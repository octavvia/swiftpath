//import SwiftUI
//
//// Animation values structure
//struct AnimationValues {
//    var position = CGPoint(x: 0, y: 0)
//    var scale = 1.0
//    var rotation = Angle(degrees: 0)
//}
//
//// Keyframe Definitions
//struct CubicKeyframe<Value>: Identifiable {
//    let value: Value
//    let duration: TimeInterval
//    let id = UUID()
//    
//    init(_ value: Value, duration: TimeInterval) {
//        self.value = value
//        self.duration = duration
//    }
//}
//
//struct SpringKeyframe<Value>: Identifiable {
//    let value: Value
//    let duration: TimeInterval
//    let spring: SpringEffect
//    let id = UUID()
//
//    init(_ value: Value, duration: TimeInterval, spring: SpringEffect) {
//        self.value = value
//        self.duration = duration
//        self.spring = spring
//    }
//}
//
//enum SpringEffect {
//    case bouncy
//}
//
//// Custom ViewModifier for Keyframe animation
//struct KeyframeAnimator<Content: View>: ViewModifier {
//    var initialValue: AnimationValues
//    var trigger: Bool
//    var keyframes: ([Keyframe<CGFloat>], [Keyframe<CGPoint>], [Keyframe<Angle>])
//    var content: (Content, AnimationValues) -> Content
//
//    @State private var currentValue = AnimationValues()
//
//    func body(content: Content) -> some View {
//        let animatedContent = self.content(content, currentValue)
//        
//        // Handle keyframe interpolation logic here.
//        // Apply animation based on currentValue for properties like position, scale, rotation
//        if trigger {
//            withAnimation(.easeInOut(duration: 1)) {
//                currentValue.scale = 1.5
//                currentValue.position = CGPoint(x: 100, y: -100)
//                currentValue.rotation = Angle(degrees: 180)
//            }
//        }
//
//        return animatedContent
//    }
//}
//
//extension View {
//    func keyframeAnimator<Content: View>(initialValue: AnimationValues, trigger: Bool, keyframes: ([Keyframe<CGFloat>], [Keyframe<CGPoint>], [Keyframe<Angle>]), content: @escaping (Self, AnimationValues) -> Content) -> some View {
//        self.modifier(KeyframeAnimator(initialValue: initialValue, trigger: trigger, keyframes: keyframes, content: content))
//    }
//}
//
//// Main View
//struct ContentView: View {
//    @State var isTapped = false
//    
//    var body: some View {
//        Circle()
//            .frame(width: 200)
//            .keyframeAnimator(initialValue: AnimationValues(), trigger: isTapped) { content, value in
//                content
//                    .offset(x: value.position.x, y: value.position.y)
//                    .scaleEffect(value.scale)
//                    .rotationEffect(value.rotation)
//            } keyframes: { value in
//                // Define keyframes for scale, position, and rotation
//                let scaleKeyframes: [Keyframe<CGFloat>] = [
//                    CubicKeyframe(1.5, duration: 0.5),
//                    CubicKeyframe(1, duration: 0.5)
//                ]
//                let positionKeyframes: [Keyframe<CGPoint>] = [
//                    SpringKeyframe(CGPoint(x: 100, y: -100), duration: 0.5, spring: .bouncy),
//                    CubicKeyframe(CGPoint(x: 400, y: 1000), duration: 0.5),
//                    CubicKeyframe(CGPoint(x: 0, y: 0), duration: 0.5)
//                ]
//                let rotationKeyframes: [Keyframe<Angle>] = [
//                    CubicKeyframe(Angle(degrees: 180), duration: 0.5),
//                    CubicKeyframe(Angle(degrees: 360), duration: 0.5)
//                ]
//                
//                return (scaleKeyframes, positionKeyframes, rotationKeyframes)
//            }
//            .onTapGesture {
//                isTapped.toggle()
//            }
//    }
//}
//
//#Preview {
//    ContentView()
//}
