//
//  ToolBar.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct ToolBarView: View {
    var body: some View {
        NavigationView {
            Text("My app")
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Image(systemName: "person")
                    HStack {
                        Image(systemName: "ellipsis")
                        Divider()
                        Image(systemName: "trash")
                            .frame(width: 32, height: 32)
                            .background(Color.blue)
                            .mask(Circle())
                    }
                }
            }
        }

    }
}

#Preview {
    ToolBarView()
}
