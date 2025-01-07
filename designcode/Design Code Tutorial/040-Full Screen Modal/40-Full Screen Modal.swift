//
//  35-Full Screen Modal.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI

struct FullScreenViw: View {
    @State private var isModalPresented = false

    var body: some View {
        NavigationView {
            VStack {
                // Button to present the full-screen modal
                Button("Show Full Screen Modal") {
                    isModalPresented.toggle()
                }
                .padding()
                .fullScreenCover(isPresented: $isModalPresented) {
                    // Content of the full-screen modal
                    FullScreenModalView(isModalPresented: $isModalPresented)
                }
            }
            .navigationTitle("Full Screen Modal Example")
        }
    }
}

struct FullScreenModalView: View {
    @Binding var isModalPresented: Bool

    var body: some View {
        // Content of the full-screen modal
        VStack {
            Text("This is a Full Screen Modal")
                .font(.title)
                .padding()

            Button("Dismiss") {
                isModalPresented = false
            }
            .padding()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct FullScreenViw_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenViw()
    }
}

