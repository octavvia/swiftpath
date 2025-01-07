import SwiftUI

struct AdvaceMatchGeo: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        
        ZStack {
            if !show {
                VStack {
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .matchedGeometryEffect(id: "cover", in: namespace)
                            .frame(width: 44)
                        Text("Fever")
                            .matchedGeometryEffect(id: "nameSong", in: namespace)
                        Spacer()
                        Image(systemName: "play.fill")
                            .matchedGeometryEffect(id: "play", in: namespace)
                            .font(.title)
                        Image(systemName: "forward.fill")
                            .matchedGeometryEffect(id: "forward", in: namespace)
                            .font(.title)
                        
                    }
                    
                }
                .frame(maxWidth: .infinity,maxHeight: 44)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .matchedGeometryEffect(id: "background", in: namespace)
                )
                .padding()
            } else {
                PlayView(namespace: namespace)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .bottom)
        .onTapGesture {
            withAnimation {
                show.toggle()
                
            }
        }
        
    }
    
}

struct PlayView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 30)
                .matchedGeometryEffect(id: "cover", in: namespace)
                .frame(height: 300)
                .padding()
            Text("Fever")
                .matchedGeometryEffect(id: "nameSong", in: namespace)
            HStack {
                Image(systemName: "play.fill").font(.title)
                    .matchedGeometryEffect(id: "play", in: namespace)
                Image(systemName: "forward.fill")
                    .matchedGeometryEffect(id: "forward", in: namespace)
                    .font(.title)
                
            }
        }
        
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(RoundedRectangle(cornerRadius: 0).fill(.blue))
        .matchedGeometryEffect(id: "background", in: namespace)
        .ignoresSafeArea()
    }
}


#Preview {
    AdvaceMatchGeo()
}
