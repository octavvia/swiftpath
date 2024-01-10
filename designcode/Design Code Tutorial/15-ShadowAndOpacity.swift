//
//  15-ShadowAndOpacity.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct ShadowAndOpacityView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
//                Color.blue.ignoresSafeArea(.all, edges: .top)


                VStack {
                    Text("App of the day")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                }
                .frame(width: 300, height: 400)
                .background(Color.pink)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
            }
        }

    }
}

#Preview {
    ShadowAndOpacityView()
}
