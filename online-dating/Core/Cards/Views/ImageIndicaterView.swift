//
//  ImageIndicaterView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 26/01/25.
//

import SwiftUI

struct ImageIndicaterView: View {
    let currentImageIndex : Int = 0
    let totalImageCount : Int = 3
    var body: some View {
        HStack {
            ForEach(0..<totalImageCount, id: \.self) { index in
              Capsule()
                    .frame(width: 80, height: 3)
                    .foregroundColor(index == currentImageIndex ? .white: .gray)
                    .padding(.horizontal, 2)
                    
            }.padding(.vertical, 8)
        }
    }
}

#Preview {
    ImageIndicaterView()
}
