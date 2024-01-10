//
//  06-ColorLiteral.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI

struct ColorLiteralView: View {
    var body: some View {
        NavigationView {
            ZStack {
//                Rectangle()
//                    .fill(Color.blue).ignoresSafeArea()
                
                VStack {
                    Text("Color literal")
                        .font(.title).bold()
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                }
                .frame(width: 300, height: 200)
                .background(Image(uiImage: #imageLiteral(resourceName: "gradienta-ix_kUDzCczo-unsplash")).resizable().aspectRatio(contentMode: .fill))
                .cornerRadius(20)
            }
        }

    }
}

#Preview {
    ColorLiteralView()
}
