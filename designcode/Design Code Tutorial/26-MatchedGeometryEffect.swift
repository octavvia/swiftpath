//
//  26-MatchedGeometryEffect.swift
//  designcode
//
//  Created by Aulia Octaviani on 10/01/24.
//

import Foundation
import SwiftUI


struct MatchedGeomety: View {
    @State var show = false
    @Namespace var namespace
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            if !show {
                      ScrollView {
                          HStack {
                              VStack {
                                  Text("Title").foregroundColor(.white)
                                      .matchedGeometryEffect(id: "title", in: namespace)
                              }
                              .frame(width: 100, height: 100)
                              .background(
                                  Rectangle().matchedGeometryEffect(id: "shape", in: namespace)
                              )
                              Rectangle()
                                  .frame(width: 100, height: 100)
                              Spacer()
                          }
                          .padding(8)
                      }
                  } else {
                      VStack {
                          Text("Title").foregroundColor(.white)
                              .matchedGeometryEffect(id: "title", in: namespace)
                              .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                              .padding()
                      }
                      .frame(maxWidth: .infinity, maxHeight: 400)
                      .background(
                          Rectangle().matchedGeometryEffect(id: "shape", in: namespace)
                      )
                  }
              }
              .onTapGesture {
                  withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                      show.toggle()
                  }
                
        }
        }
}

#Preview {
    MatchedGeomety()
}
