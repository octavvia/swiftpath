//
//  28-NavigationView.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct NavView: View {
    @State var show = false
    @Namespace var namespace
    var body: some View {
        ZStack {
            NavigationView {
                        VStack {
                            // Your content goes here
                            Text("Welcome to SwiftUI Navigation")
                                .padding()

                            // NavigationLink to another view
                            NavigationLink(destination: DetailView()) {
                                Text("Go to Detail View")
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                        }
                        .navigationTitle("SwiftUI Example")
                    }
                
        }
        }
}
struct DetailView: View {
    var body: some View {
        VStack {
            Text("Detail View")
                .font(.title)
                .padding()

            // Additional content for the detail view
        }
        .navigationTitle("Detail")
    }
}

#Preview {
    NavView()
}
