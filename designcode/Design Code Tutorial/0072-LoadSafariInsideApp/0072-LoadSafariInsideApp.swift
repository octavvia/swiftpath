import SwiftUI

struct InAppSafariView: View {
    @State private var showSafari: Bool = false
    var body: some View {
          Text("Open Design+Code in Safari")
            .padding()
            .foregroundStyle(.blue)
            .onTapGesture {
                showSafari.toggle()
            }
            .fullScreenCover(isPresented: $showSafari, content: {
                SFSafariViewWrapper(URL: URL(string: "https://www.designcode.io")!)
            })
    }
}

#Preview {
    InAppSafariView()
}
