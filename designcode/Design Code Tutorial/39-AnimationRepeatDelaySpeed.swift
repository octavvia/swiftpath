//
//  39-AnimationRepeatDelaySpeed.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct AnimationDS: View {
    @State var appear = false
    var body: some View {
        Circle()
            .trim(from: 0.2, to: 1)
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round))
            .frame(width: 44, height: 44)
            .rotationEffect(Angle(degrees: appear ? 360 : 0))
//            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .animation(
//                Animation.linear.repeatForever()
//                Animation.easeOut.repeatForever()
//                Animation.linear.repeatForever(autoreverses: false)
                Animation.linear.repeatCount(3)
            )
        
            .onAppear{
            appear=true
            }
    }
}

#Preview {
    AnimationDS()
}
