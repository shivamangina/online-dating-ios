//
//  CardActionView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 26/01/25.
//

import SwiftUI

struct CardActionView: View {
    
    @Binding var xOffset: CGFloat
    let screenCutOff: CGFloat
    
    var body: some View {
        HStack {
            Text("LIKE").font(.title)
                .fontWeight(.bold)
                .foregroundColor(.green)
                .overlay {
                    Rectangle()
                        .stroke(style: StrokeStyle(lineWidth: 1))
                        .foregroundColor(.green)
                        .frame(width: 70, height: 40)
                }.rotationEffect(.degrees(-45))
                .opacity(Double(xOffset/screenCutOff))
            
            Spacer()
            
            Text("NOPE").font(.title)
                .fontWeight(.bold)
                .foregroundColor(.red)
                .overlay {
                    Rectangle()
                        .stroke(style: StrokeStyle(lineWidth: 1))
                        .foregroundColor(.red)
                        .frame(width: 90, height: 40)
                }.rotationEffect(.degrees(45))
                .opacity(Double(xOffset/screenCutOff) * -1)
        }.padding(40)
    }
}

#Preview {
    CardActionView(xOffset: .constant(20), screenCutOff: 1)
}
