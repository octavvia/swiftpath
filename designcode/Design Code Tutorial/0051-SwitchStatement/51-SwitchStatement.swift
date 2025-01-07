//
//  46-SwitchStatement.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct SwitchViw: View {
    @State private var selectedOption: Int = 1

    var body: some View {
        VStack {
            Picker("Select an option", selection: $selectedOption) {
                Text("Option 1").tag(1)
                Text("Option 2").tag(2)
                Text("Option 3").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            // Using a switch statement to conditionally render different views
            switch selectedOption {
            case 1:
                Text("You selected Option 1")
                    .padding()
            case 2:
                Text("You selected Option 2")
                    .padding()
            case 3:
                Text("You selected Option 3")
                    .padding()
            default:
                EmptyView()
            }
        }
        .padding()
    }
}

struct SwitchViw_Previews: PreviewProvider {
    static var previews: some View {
        SwitchViw()
    }
}

/*
 seperti switch pada umumnya
 */
