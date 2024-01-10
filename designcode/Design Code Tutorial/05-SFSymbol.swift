//
//  05-SFSymbol.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI

struct SFSymbolView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color.blue).ignoresSafeArea()
                
                VStack {
                    Image(systemName: "paperplane.circle.fill")
                        .renderingMode(.original)
                    Image(systemName: "gear")
                        .font(.system(size: 20, weight: .light))
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
    SFSymbolView()
}
