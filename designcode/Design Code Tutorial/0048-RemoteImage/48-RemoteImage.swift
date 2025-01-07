//
//  43-RemoteImage.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI
import SDWebImageSwiftUI

struct RemoteImg: View {
    var imageURL: URL = URL(string: "https://images.unsplash.com/photo-1682685795463-0674c065f315?q=80&w=1326&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!

    var body: some View {
        VStack {
            Text("Remote Image Example")
                .font(.title)

            // Using SDWebImageSwiftUI to load a remote image
            WebImage(url: imageURL)
                .resizable()
                .placeholder {
                    // Placeholder image while loading
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.gray)
                }
                .indicator(.activity) // Activity indicator while loading
                .transition(.fade(duration: 0.5)) // Fade animation on image load
                .scaledToFit()
                .frame(width: 200, height: 200)
//                .clipShape(Circle())
        }
        .padding()
    }
}

struct RemoteImg_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImg()
    }
}

/*
 kode ini digunakan untuk menampilkan gambar dari remote
 */
