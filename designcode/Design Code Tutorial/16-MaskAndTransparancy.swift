//
//  16-MaskAndTransparancy.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct MaskAndTransparancy: View {
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                    ForEach(0 ..< 5) { item in
                        Text("Mask and Transparency")
                            .font(.title3).bold()
                            .padding(.vertical)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                    }
                }
                .frame(height: 300, alignment: .top)
                .padding()
                .background(Color.white)
                .mask(
                    LinearGradient(gradient: Gradient(colors: [Color.black, Color.black, Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(30)
                .padding()
            }
        }
}

#Preview {
    MaskAndTransparancy()
}
