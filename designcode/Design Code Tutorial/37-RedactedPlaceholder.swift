//
//  37-RedactedPlaceholder.swift
//  designcode
//
//  Created by Aulia Octaviani on 11/01/24.
//
import Foundation
import SwiftUI

struct RedactedView: View {  // Corrected the view name to "RedactedView"
    @State var isLoading = true

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.3647, green: 0.0667, blue: 0.9686), Color(red: 0.5569, green: 0.3529, blue: 0.9686)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            CardView()
                .redacted(reason: isLoading ? .placeholder : [])  
            // Use an empty array to remove redaction when not loading
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        isLoading = false
                    }
                }
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Designing fluid interfaces")
                .font(.title2).bold()
            Text("By Chan Karunamuni".uppercased())
                .font(.footnote).bold()
                .foregroundColor(.secondary)
            Text("Discover the techniques used to create the fluid gestural interface of iPhone X. Learn how to design with gestures and motion that feel intuitive and natural, making your app a delight to use.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 300)
        .background(Color.white)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 40)
        .padding()
    }
}

#Preview {
    RedactedView()  // Use the corrected view name
}

