import SwiftUI

// Custom Layout using the Layout protocol
struct CustomLayout: Layout {
    // Function to calculate the size that fits the layout
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        // Replace unspecified dimensions with default ones
        proposal.replacingUnspecifiedDimensions()
    }

    // Function to place subviews manually
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        for (index, subview) in subviews.enumerated() {
            // Calculate the custom position for each subview
            var point = CGPoint(x: 50 * index, y: 50 * index)

            // Center the position relative to the bounds
            point.x += bounds.midX
            point.y += bounds.midY

            // Apply a rotation transform to the position
            point = point.applying(CGAffineTransform(rotationAngle: CGFloat(index) * .pi / 8))

            // Place the subview at the calculated position
            subview.place(at: point, anchor: .center, proposal: .unspecified)
        }
    }
}

struct CustomLayoutView: View {
    // Array of SF Symbols to display in the layout
    var icons = ["calendar", "message", "figure.walk", "music.note"]

    var body: some View {
        VStack {
            // Custom layout to display icons
            CustomLayout {
                ForEach(icons, id: \.self) { item in
                    Circle()
                        .frame(width: 44)
                        .overlay(
                            Image(systemName: item)
                                .foregroundColor(.white)
                        )
                        .background(Circle().fill(Color.blue))
                }
            }
            .frame(width: 300, height: 300) // Fixed frame for the layout
            .background(Color.gray.opacity(0.2))
            .cornerRadius(16)

            Spacer()
        }
        .padding()
    }
}

#Preview{
    CustomLayoutView()
}

