//
//  25-DragGesture.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct DragGestureView: View {
    @GestureState var press = false
    @State var show = false
    @State var viewState = CGSize.zero
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30)
                       .fill(Color.blue)
                       .frame(width: 300, height: 400)
                       .offset(x: viewState.width, y: viewState.height)
                       .gesture(
                           DragGesture().onChanged { value in
                               viewState = value.translation
                           }
                           .onEnded { value in
                               withAnimation(.spring()) {
                                   viewState = .zero
                               }
                           }
                       )
                
        }
        }
}

#Preview {
    DragGestureView()
}
