//
//  07-SideBar.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation

import SwiftUI

struct SideBarView: View {
    var body: some View {
        NavigationView {
            Sidebar()
            
            Text("Home Page")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray.opacity(0.1))
                .navigationTitle("Home")
        }
    }
}

struct Sidebar: View {
    var body: some View {
        List {
            NavigationLink(destination: Text("Profile")) {
                Label("Profile", systemImage: "person.circle")
            }
            
            NavigationLink(destination: Text("Settings")) {
                Label("Settings", systemImage: "gearshape")
            }
            
            // Add more NavigationLinks for additional sidebar items
            
        }
        .listStyle(SidebarListStyle())
        .navigationTitle("Sidebar")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
