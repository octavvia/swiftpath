//
//  20-TransitionAndAnimation.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct TransitionAnimatioView: View {
    @State var show = false
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                if !show {
                              Text("View Transition")
                                  .padding()
                                  .background(Capsule().stroke())
                          } else {
                              RoundedRectangle(cornerRadius: 30)
                                  .fill(Color.blue)
                                  .padding()
                                  .transition(.move(edge: .trailing))
                                  .zIndex(1)
                          }
                      }
                      .onTapGesture {
                          withAnimation(.spring()) {
                              show.toggle()
                          }
            }
        }
}

#Preview {
    TransitionAnimatioView()
}
