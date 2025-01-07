//
//  11-Text.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI

struct ModifiedTextView: View {
    @State private var text: String = "Type your text here"

    var body: some View {
        VStack {
            // TextView with placeholder and custom font
            TextView(text: $text, placeholder: "Type your text here")
                .font(.custom("Arial", size: 16))
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

            // Other modifications
            // You can add more modifications based on your requirements
        }
        .padding()
    }
}

// Custom TextView implementation
struct TextView: UIViewRepresentable {
    @Binding var text: String
    var placeholder: String

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.delegate = context.coordinator
        textView.isScrollEnabled = true
        textView.isEditable = true
        textView.isUserInteractionEnabled = true
        textView.text = placeholder
        textView.textColor = UIColor.placeholderText
        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        if uiView.text.isEmpty {
            uiView.text = placeholder
            uiView.textColor = UIColor.placeholderText
        } else {
            uiView.text = text
            uiView.textColor = UIColor.label
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UITextViewDelegate {
        var parent: TextView

        init(_ parent: TextView) {
            self.parent = parent
        }

        func textViewDidChange(_ textView: UITextView) {
            parent.text = textView.text
        }

        func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.textColor == UIColor.placeholderText {
                textView.text = nil
                textView.textColor = UIColor.label
            }
        }

        func textViewDidEndEditing(_ textView: UITextView) {
            if textView.text.isEmpty {
                textView.text = parent.placeholder
                textView.textColor = UIColor.placeholderText
            }
        }
    }
}

struct ModifiedTextView_Previews: PreviewProvider {
    static var previews: some View {
        ModifiedTextView()
    }
}
