//
//  40-TabSelectionFromChildView.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
//import SwiftUI
//
//struct TabBar: View {
//    @State var tabSelection = 1
//
//    var body: some View {
//        TabView(selection: $tabSelection) {
//            TabSel(tabSelection: $tabSelection)
//                .tabItem {
//                    Image(systemName: "square.grid.2x2.fill")
//                    Text("Home") }
//                .tag(1)
//
//            SecondView()
//                .tabItem {
//                    Image(systemName: "rectangle.stack.fill")
//                    Text("Settings")
//                }
//                .tag(2)
//        }
//    }
//}
//
//struct TabSel: View {
//    @Binding var tabSelection: Int
//
//    var body: some View {
//        Text("Change tab")
//            .onTapGesture {
//                tabSelection = 2
//            }
//    }
//}
//
//struct TabSel_Previews: PreviewProvider {
//    static var previews: some View {
//        TabSel(tabSelection: .constant(1))
//    }
//}
//
//struct SecondView: View {
//    var body: some View {
//        Text("Second View")
//    }
//}

//#Preview {
//    TabSel()
//}

import SwiftUI

struct TabViewBr: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            // Tab 1
            Text("Tab 1 Content")
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Tab 1")
                }
                .tag(0)

            // Tab 2
            Text("Tab 2 Content")
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Tab 2")
                }
                .tag(1)

            // Tab 3
//            Text("Tab 3 Content")
//                .tabItem {
//                    Image(systemName: "rectangle.stack.fill")
//                    Text("Tab 3")
//                }
//                .tag(2)
        }
        .onAppear {
            UITabBar.appearance().barTintColor = UIColor.systemBackground
        }
    }
}

struct TabViewBr_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBr()
    }
}

