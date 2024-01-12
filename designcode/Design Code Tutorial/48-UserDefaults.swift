//
//  48-UserDefaults.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct UserDev: View {
    @State private var username: String = ""
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                TextField("Enter username", text: $username)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
                    
                
                Button("Save Username") {
                    saveUsername()
                }
                .padding()
                
                Text("Stored Username: \(storedUsername ?? "Not set")")
                    .padding()
            }
            .padding()
        }
        
        
        }
    private func saveUsername() {
        UserDefaults.standard.set(username, forKey: "storedUsername")
    }
    
    private var storedUsername: String? {
        UserDefaults.standard.string(forKey: "storedUsername")
    }
        
}

struct UserDev_Previews: PreviewProvider {
    static var previews: some View {
        UserDev()
    }
}

/*
 user defaults ini digunakan untuk menyimpan sementara data berupa cache
 */
