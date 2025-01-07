//
//  17-ClipShapeandSmooth.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct ClipShapeView: View {
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                       Text("SwiftUI for iOS 14")
                           .bold()
                   }
                   .frame(width: 300, height: 200)
                   .background(Color.white)
                   .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            }
        }
}

#Preview {
    ClipShapeView()
}
