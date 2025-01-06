//
//  54-AppStorage.swift
//  designcode
//
//  Created by Aulia Octaviani on 15/01/24.
//

import Foundation
//import SwiftUI
//
//@main
//struct MyApp: App {
//    @AppStorage("isDarkModeOn") private var isDarkModeOn: Bool = false
//
//    var body: some Scene {
//        WindowGroup {
//            ContentView(isDarkModeOn: $isDarkModeOn)
//        }
//    }
//}
//
//struct ContentView: View {
//    @Binding var isDarkModeOn: Bool
//
//    var body: some View {
//        VStack {
//            Toggle("Dark Mode", isOn: $isDarkModeOn)
//                .padding()
//                .onChange(of: isDarkModeOn) { newValue in
//                    // Perform actions when the value changes
//                    // For example, update the app's appearance
//                    updateAppAppearance()
//                }
//
//            Text("Current Mode: \(isDarkModeOn ? "Dark" : "Light")")
//                .padding()
//        }
//    }
//
//    private func updateAppAppearance() {
//        // Implement your code to update the app's appearance based on the dark mode setting
//        // For example, you could use the appearance API to set the color scheme
//        if isDarkModeOn {
//            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .dark
//        } else {
//            UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .light
//        }
//    }
//}
