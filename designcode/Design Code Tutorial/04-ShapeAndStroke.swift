//
//  03-ShapeAndStroke.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct ShapeAndStroke: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.blue).ignoresSafeArea()
                
                VStack {
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 44, height: 44)
                    Text("Meng To").bold()
                    Capsule()
                        .foregroundColor(Color.green)
                        .frame(height: 44)
                        .overlay(Text("Sign up"))
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                .padding()
            }
        }

    }
}

#Preview {
    ShapeAndStroke()
}
