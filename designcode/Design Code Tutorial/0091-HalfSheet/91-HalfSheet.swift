import SwiftUI


struct HalfSheet: View {
    @State var showSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            Text("Content")
                .presentationDetents([.height(200), .medium, .large])
                .presentationDragIndicator(.automatic)
        }
        .font(.title).bold()
    }
}


#Preview {
    HalfSheet()
}
