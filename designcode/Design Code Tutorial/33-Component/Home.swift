//
//  Home.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct LLongPressView: View {
    @GestureState var press = false
    @State var show = false
    var body: some View {
        VStack(spacing: 20) {
                    Text("Apple Design Resources")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Design apps quickly and accurately by using Sketch, Photoshop, and XD templates, guides, and other resources.")
                    LargeButton()
                    Spacer()
                }
                .padding(20)
        }
        
}

#Preview {
    LLongPressView()
}
