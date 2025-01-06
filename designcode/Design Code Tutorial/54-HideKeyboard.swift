//
//  49-HideKeyboard.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct HideKey: View {
    @State private var username: String = ""

    var body: some View {
        VStack {
            TextField("Enter username", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle()) // Optional: Apply a border style

            Button("Save Username") {
                saveUsername()
                hideKeyboard()
            }
            .padding()

            Text("Stored Username: \(storedUsername ?? "Not set")")
                .padding()
        }
        .padding()
    }

    private func saveUsername() {
        UserDefaults.standard.set(username, forKey: "storedUsername")
    }

    private var storedUsername: String? {
        UserDefaults.standard.string(forKey: "storedUsername")
    }

    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct HideKey_Previews: PreviewProvider {
    static var previews: some View {
        HideKey()
    }
}
