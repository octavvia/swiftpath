import SwiftUI

struct MarkdownAtribute: View {
    let markdown = "Visit [Design Code](https://designcode.io) to learn how to `code` and _design_."
    @State private var myString: AttributedString = ""
    
    var body: some View {
        Text(myString)
            .font(.title2).bold()
            .padding()
            .onAppear {
                do {
                    myString = try AttributedString(markdown: markdown)
                } catch {
                    print("Error creating AttributedString:  \(error)")
                }
            }
    }
}

#Preview {
    MarkdownAtribute()
}
