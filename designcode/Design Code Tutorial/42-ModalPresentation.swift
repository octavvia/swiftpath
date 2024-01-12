//
//  42-ModalPresentation.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct MoPre: View {
    @State private var isModalPresented = false

    var body: some View {
        Button("Show Modal") {
            isModalPresented.toggle()
        }
        .sheet(isPresented: $isModalPresented) {
            // Tampilan modal akan ditampilkan di sini
            ModalContentView()
        }
    }
}

struct ModalContentView: View {
    var body: some View {
        VStack {
            Text("Ini adalah modal!")
            // Konten modal ditambahkan di sini
        }
        .padding()
    }
}




#Preview {
    MoPre()
}

/*
 kode ini bisa dipakai untuk modal bottom
 */
