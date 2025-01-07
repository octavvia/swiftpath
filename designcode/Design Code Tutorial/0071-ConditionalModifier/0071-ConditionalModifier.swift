import SwiftUI

struct ConditionalModifierView: View {
    @State var shouldBeRed = false
    var body: some View {
        
        Text(shouldBeRed ? "Hello World!" : "Goodbye")
                .font(.title).bold()
                .padding()
                .foregroundStyle(shouldBeRed ? .red : .green)
                .if(shouldBeRed) { view in
                    view.background(.red)
                }
       
       
    }
}

#Preview {
    ConditionalModifierView()
}

extension View {
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
