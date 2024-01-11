//
//  30-ColorPicker.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI

struct ColorViewPicker: View {
    @State private var selectedColor: Color = .red

    var body: some View {
        VStack {
            // ColorPicker
            ColorPicker("Pick a Color", selection: $selectedColor)
                .padding()
                .foregroundColor(selectedColor)

            // Display the selected color
            Text("Selected Color: \(selectedColor.description)")
                .padding()
                .foregroundColor(selectedColor)
        }
        .navigationTitle("Color Picker Example")
    }
}

struct ColorViewPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorViewPicker()
    }
}
