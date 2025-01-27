//
//  CardView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 25/01/25.
//

import SwiftUI

struct CardView: View {

    @State private var xOffset: CGFloat = 0
    @State private var degree: CGFloat = 0
//    @State private var currentImage: Int = 0

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
               

                Image(.alex)
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollOverlayView()
                    }
                    

                CardActionView(xOffset: $xOffset, screenCutOff: SizeConstants.screenCutOff)
                
            }

            UserInfoView().padding(.horizontal, 40)

        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .offset(x: xOffset, y: 0)
        .rotationEffect(.degrees(degree))
        .gesture(
            DragGesture().onChanged({ value in
                withAnimation(.snappy) {
                    xOffset = value.translation.width
                    degree = value.translation.width / 25
                }

            })
            .onEnded({ value in

                withAnimation(.smooth) {
                    xOffset = 0
                    degree = 0
                }
            })
        )

    }

}

//extension CardView {
//
//   
//
//}

#Preview {
    CardView()
}
