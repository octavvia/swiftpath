//
//  21-AnimationModifierAndTiming.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct AnimationModifierView: View {
    @State var show = false
    var body: some View {
//            ZStack {
//                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                    .ignoresSafeArea()
//
//                if !show {
//                              Text("View Transition")
//                                  .padding()
//                                  .background(Capsule().stroke())
//                          } else {
//                              RoundedRectangle(cornerRadius: 30)
//                                  .fill(Color.blue)
//                                  .padding()
//                                  .transition(.move(edge: .trailing))
//                                  .zIndex(1)
//                          }
//                      }
//                      .onTapGesture {
//                          withAnimation(.spring()) {
//                              show.toggle()
//                          }
//            }
        ZStack {
               Color.black.ignoresSafeArea()
                   .opacity(show ? 0.8 : 0.2)
                   .animation(.easeOut(duration: 0.8))
               RoundedRectangle(cornerRadius: 40)
                   .foregroundColor(.white)
                   .frame(height: 300)
                   .opacity(show ? 1 : 0.5)
                   .padding(show ? 16 : 32)
                   .offset(y: show ? 0 : 30)
                   .animation(.spring(response: 0.5, dampingFraction: 0.4))
               RoundedRectangle(cornerRadius: 40)
                   .frame(height: 300)
                   .offset(y: show ? 600 : 0)
                   .foregroundColor(.white)
                   .shadow(radius: 40)
                   .padding()
                   .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
           }
           .onTapGesture {
               show.toggle()
           }
        }
}

#Preview {
    AnimationModifierView()
}
