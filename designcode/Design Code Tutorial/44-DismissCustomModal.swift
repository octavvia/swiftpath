//
//  44-DismissCustomModal.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct Disms: View {
    @State private var isModalPresented = false

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                Button("Show Modal") {
                    isModalPresented.toggle()
                }
                .padding()

                if isModalPresented {
                    CustomModalView(isPresented: $isModalPresented)
                }
            }
        }
        
    }
}

struct CustomModalView: View {
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            Text("This is a custom modal")
                .padding()

            Button("Dismiss") {
                isPresented.toggle()
            }
            .padding()
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
        .onTapGesture {
            // Prevent taps from dismissing the modal
        }
    }
}

struct Disms_Previews: PreviewProvider {
    static var previews: some View {
        Disms()
    }
}


/*
 digunakan untuk menampilkan dismiss button biasanya untuk konfrimasi
 */
