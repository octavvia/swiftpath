import SwiftUI

struct AttributedStringExample: View {
    var body: some View {
        Text(attributedString)
            .font(.title)
            .padding()
    }

    var attributedString: AttributedString {
        // Check iOS version to ensure compatibility
        if #available(iOS 15.0, *) {
            // Create the AttributedString
            var name = AttributedString("Stephanie")
            
            // Create an AttributeContainer
            var container = AttributeContainer()
            
            // Add styling to the container
            container.foregroundColor = .blue
            container.underlineStyle = .single
            container.underlineColor = .blue
            
            // Merge the attributes with the name
            name.mergeAttributes(container)
            
            // Return the full styled string
            return "Hello, " + name
        } else {
            // Fallback for unsupported iOS versions
            return AttributedString("Hello, Stephanie")
        }
    }
}
#Preview{
    AttributedStringExample()
}
