import SwiftUI

struct ComponentViewType: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Apple Design Resources")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity,alignment: .leading)
            Text("Design apps quickly and accurately by using Sketch, Photoshop, and XD templates, guides, and other resources.").font(.subheadline)
            CLargeButton(text: "Download files")
        }
        .padding()
        Spacer()
    }
}

struct CLargeButton: View {
    var text: String
    var body: some View {
        Button(action: {}, label: {
            Text(text)
                .bold()
            
        })
        .frame(maxWidth: .infinity)
        .padding()
        .background(.blue)
        .mask(RoundedRectangle(cornerRadius: 10.0))
        .foregroundStyle(.white)
    }
}

#Preview {
    ComponentViewType()
}

 
