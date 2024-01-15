//
//  56-TabbarScrollUp.swift
//  designcode
//
//  Created by Aulia Octaviani on 15/01/24.
//


/// BAGIAN INI DIPELAJARI LAGI!!

import Foundation
import SwiftUI

struct TabScrl: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // Tab 1
            ScrollViewReader { proxy in
                VStack {
                    Button("Scroll to Top") {
                        withAnimation {
                            proxy.scrollTo(0)
                        }
                    }
                    .padding()

                    ScrollView {
                        ForEach(0..<100) { index in
                            Text("Item \(index)")
                                .frame(height: 50)
                        }
                    }
                }
                .onAppear {
                    // Reset the selectedTab when the tab appears
                    selectedTab = 0
                }
            }
            .tag(0)
            .tabItem {
                Image(systemName: "1.circle")
                Text("Tab 1")
            }

            // Tab 2 (similar structure as Tab 1)
            ScrollViewReader { proxy in
                VStack {
                    Button("Scroll to Top") {
                        withAnimation {
                            proxy.scrollTo(0)
                        }
                    }
                    .padding()

                    ScrollView {
                        ForEach(0..<100) { index in
                            Text("Item \(index)")
                                .frame(height: 50)
                        }
                    }
                }
                .onAppear {
                    selectedTab = 1
                }
            }
            .tag(1)
            .tabItem {
                Image(systemName: "2.circle")
                Text("Tab 2")
            }
        }
    }
}

struct TabScrl_Previews: PreviewProvider {
    static var previews: some View {
        TabScrl()
    }
}
