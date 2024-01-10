//
//  10-SaveArea.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct SafeAreaView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
//                Color.blue.ignoresSafeArea(.all, edges: .top)


                VStack {
                    Text("SwiftUI for iOS 14")
                        .bold()
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
            }
        }

    }
}

#Preview {
    SafeAreaView()
}
