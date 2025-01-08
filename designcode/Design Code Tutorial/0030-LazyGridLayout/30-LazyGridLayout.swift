import SwiftUI

struct LazyView: View {
    var body: some View {
         
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(.flexible(), spacing: 16), count: 4), spacing: 16) {
                ForEach(0 ..< 12) { item in
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.blue)
                        .frame(height: 100)
                }
            }
            .padding()
        }
         
        
//        ScrollView {
//            LazyVGrid(columns: [
//                GridItem(.fixed(80), spacing: 16),
//                GridItem(.fixed(160), spacing: 16),
//                GridItem(.fixed(80), spacing: 16)
//            ], spacing: 16) {
//                ForEach(0 ..< 12) { item in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(.blue)
//                        .frame(height: 100)
//                }
//            }
//            .padding()
//        }
        
//        ScrollView {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16) {
//                ForEach(0 ..< 12) { item in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(.blue)
//                        .frame(height: 100)
//                }
//            }
//            .padding()
//        }
        
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16) {
//                ForEach(0 ..< 12) { item in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(.blue)
//                        .frame(width: 300)
//                }
//            }
//            .padding()
//        }
//        .frame(height: 400)
        
//        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80), spacing: 16)],spacing: 16) {
//            ForEach(0 ..< 12) { item in
//                RoundedRectangle(cornerRadius: 15)
//                    .fill(.blue)
//                    .frame(height: 100)
//            }
//        }
//        .padding()
        
         
    }
}

#Preview {
    LazyView()
}
