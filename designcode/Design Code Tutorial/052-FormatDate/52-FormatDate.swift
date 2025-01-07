//
//  47-FormatDate.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct DateViewF: View {
    let currentDate = Date()

    var body: some View {
        VStack {
            Text("Original Date:")
                .font(.headline)
            
            Text("\(currentDate)")
                .padding()

            Text("Formatted Date:")
                .font(.headline)

            Text("\(formattedDate())")
                .padding()
        }
        .padding()
    }

    // kode dibawah ini merupakan kode dari js ke swift
    func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy 'at' h:mm a"
        return dateFormatter.string(from: currentDate)
    }
}

struct DateViewF_Previews: PreviewProvider {
    static var previews: some View {
        DateViewF()
    }
}
