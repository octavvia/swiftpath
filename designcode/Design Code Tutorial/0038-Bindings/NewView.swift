import SwiftUI

struct NewView: View {
    @Binding var show: Bool
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(.blue)
            .onTapGesture {
                withAnimation(.easeInOut) {
                    show.toggle()
                }
            }
    }
}

#Preview {
    NewView(show: .constant(true))
}
