//
//  51-LinkFromText.swift
//  designcode
//
//  Created by Aulia Octaviani on 15/01/24.
//

import Foundation
import SwiftUI


struct SingleLinkView: View {
    var body: some View {
        VStack {
            Text("Visit our website:")
            Link("Example Website", destination: URL(string: "https://example.com")!)
        }
        .padding()
    }
}

struct MultiLinkView: View {
    var body: some View {
        VStack {
            Text("Visit our websites:")
            HStack {
                Link("Website 1", destination: URL(string: "https://example1.com")!)
                Text(" | ")
                Link("Website 2", destination: URL(string: "https://example2.com")!)
                Text(" | ")
                Link("Website 3", destination: URL(string: "https://example3.com")!)
            }
        }
        .padding()
    }
}


#Preview {
//    SingleLinkView()
    MultiLinkView()
}
