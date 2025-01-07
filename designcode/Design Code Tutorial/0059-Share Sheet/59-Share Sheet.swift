//
//  52-Share Sheet.swift
//  designcode
//
//  Created by Aulia Octaviani on 15/01/24.
//

import Foundation
import SwiftUI

struct ShareSheetViw: View {
    let shareText = "Check out this amazing content! #SwiftUI #iOSDevelopment"

    var body: some View {
        VStack {
            Text("Your Content Goes Here")
                .padding()

            Button("Share") {
                showShareSheet(items: [shareText])
            }
            .padding()
        }
    }

    
    // fungsi untuk memunculkan share button tools
    private func showShareSheet(items: [Any]) {
        let activityViewController = UIActivityViewController(activityItems: items, applicationActivities: nil)

        if let topViewController = UIApplication.shared.windows.first?.rootViewController {
            activityViewController.popoverPresentationController?.sourceView = topViewController.view
            topViewController.present(activityViewController, animated: true, completion: nil)
        }
    }
}

struct ShareSheetViw_Previews: PreviewProvider {
    static var previews: some View {
        ShareSheetViw()
    }
}


