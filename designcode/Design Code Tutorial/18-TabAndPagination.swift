//
//  18-TabAndPagination.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct TabAndPagination: View {
    var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                TabView {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.blue)
                        .padding()
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.red)
                        .padding()
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.purple)
                        .padding()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            }
        }
}

#Preview {
    TabAndPagination()
}
