//
//  24-LongpresGesture.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct LongPressView: View {
    @GestureState var press = false
    @State var show = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            Image(systemName: "camera.fill")
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .background(show ? Color.black : Color.blue)
                        .mask(Circle())
                        .scaleEffect(press ? 2 : 1)
                        .animation(.spring(response: 0.4, dampingFraction: 0.6))
                        .gesture(
                            LongPressGesture(minimumDuration: 0.5)
                                .updating($press) { currentState, gestureState, transaction in
                                    gestureState = currentState
                                }
                                .onEnded { value in
                                    show.toggle()
                                }
                        )
                
        }
        }
}

#Preview {
    LongPressView()
}
