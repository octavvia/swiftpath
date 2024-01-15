//
//  50-AVPPlayer.swift
//  designcode
//
//  Created by Aulia Octaviani on 15/01/24.
//

import Foundation
import SwiftUI
import AVKit

struct VideoPlayerViewz: View {
    let videoURL: URL // Provide the URL of the video

    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: videoURL)) {
                // You can add overlay views or controls here
            }
            .onAppear() {
                // Start playing the video when the view appears
//                AVPlayer.shared().play()
            }
        }
    }
}

struct VideoPlayerViewz_Previews: PreviewProvider {
    static var previews: some View {
        // Provide a sample video URL for preview
        VideoPlayerViewz(videoURL: URL(string: "https://example.com/sample.mp4")!)
    }
}

