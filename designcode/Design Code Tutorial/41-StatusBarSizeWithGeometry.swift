//
//  41-StatusBarSizeWithGeometry.swift
//  designcode
//
//  Created by Aulia Octaviani on 12/01/24.
//

import Foundation
import SwiftUI

struct StatusGeo: View {
    var body: some View {
        GeometryReader{
            geometry in
            VStack{
                Text("\(geometry.safeAreaInsets.top)")
                                   .padding()
                Text("\(geometry.safeAreaInsets.bottom)")
                                   .padding()
            }
        }
    }
}

struct StatusGeo_Previews: PreviewProvider{
    static var previews: some View{
        StatusGeo()
    }
}


/*
 kode ini digunakan untuk mengetahui ukuran layar iphone
 */
