//import SwiftUI
//
//struct MentalSharder: View {
//    let startDate = Date()
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            // Example 1: Angled Fill
//            Image(systemName: "touchid")
//                .font(.system(size: 200).weight(.heavy))
//                .foregroundStyle(
//                    ShaderLibrary.angledFill(
//                        .float(10),       // Width
//                        .float(10),       // Angle
//                        .color(.blue)     // Color
//                    )
//                )
//                .padding()
//            
//            // Example 2: Circle Loader
//            Rectangle()
//                .frame(width: 200, height: 200)
//                .colorEffect(
//                    ShaderLibrary.circleLoader(
//                        .boundingRect,
//                        .float(startDate.timeIntervalSinceNow)
//                    )
//                )
//            
//            // Example 3: Noise Effect
//            Image(systemName: "leaf")
//                .font(.system(size: 100))
//                .colorEffect(ShaderLibrary.noise(.float(1)))
//            
//            // Example 4: TimelineView Animation with Noise
//            TimelineView(.animation) { context in
//                Image(systemName: "touchid")
//                    .font(.system(size: 200).weight(.heavy))
//                    .colorEffect(ShaderLibrary.noise(.float(startDate.timeIntervalSinceNow)))
//            }
//            
//            // Example 5: Emboss Effect
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 200, height: 200)
//                .layerEffect(
//                    ShaderLibrary.emboss(.float(1)),
//                    maxSampleOffset: .zero
//                )
//            
//            // Example 6: Complex Wave Effect
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: 200, height: 200)
//                .visualEffect { content, proxy in
//                    content.distortionEffect(
//                        ShaderLibrary.complexWave(
//                            .float(startDate.timeIntervalSinceNow),
//                            .float2(proxy.size),
//                            .float(0.5),
//                            .float(8),
//                            .float(10)
//                        ),
//                        maxSampleOffset: CGSize(width: 100, height: 100)
//                    )
//                }
//        }
//        .padding()
//    }
//}
//
//struct MentalSharder_Previews: PreviewProvider {
//    static var previews: some View {
//        MentalSharder()
//    }
//}
