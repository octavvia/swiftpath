//
//  45-IteratingArray.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct IterateAr: View {
    let fruits = ["Apple", "Banana", "Orange", "Grapes"]

    var body: some View {
        VStack {
            Text("Fruits:")
                .font(.title)

            // Iterate over the array using ForEach
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .padding()
            }
        }
        .padding()
    }
}

struct IterateAr_Previews: PreviewProvider {
    static var previews: some View {
        IterateAr()
    }
}

/*
 menampilkan array berdasarkan iterasi
 */
