//
//  19-AnimationStates.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct AnimationStateView: View {
    @State var show = false
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                       Text("View more")
                           .bold()
                           .foregroundColor(.white)
                   }
                   .frame(width: show ? 320 : 300, height: show ? 600 : 44)
                   .background(Color.blue)
                   .cornerRadius(30)
                   .shadow(color: Color.blue.opacity(0.5), radius: 20)
                   .onTapGesture {
                       withAnimation(.spring()) {
                           show.toggle()
                       }
                   }
            }
        }
}

#Preview {
    AnimationStateView()
}
