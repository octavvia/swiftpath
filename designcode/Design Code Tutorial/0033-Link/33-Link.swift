//
//  29-Link.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct LinkView: View {
    @State var show = false
    @Namespace var namespace
    var body: some View {
        ZStack {
            VStack {
                        // Link to an external URL
                        Link("Visit OpenAI", destination: URL(string: "https://www.openai.com")!)
                            .padding()
                            .foregroundColor(.blue)

                        // Link to another view within the app
                        NavigationLink(destination: NewDetailView()) {
                            Text("Go to Detail View")
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    }
                    .navigationTitle("Link Example")
                
        }
        }
}

struct NewDetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.title)
                .padding()
        }
        .navigationTitle("Detail")
    }
}


#Preview {
    LinkView()
}
