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
    @State private var currentImage: Int = 0
    @State private var showProfileModal: Bool = false

    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {

                Image(.alex)
                    .resizable()
                    .scaledToFill()
                    .overlay {
                        ImageScrollOverlayView(currentImage:$currentImage)
                    }

                CardActionView(
                    xOffset: $xOffset, screenCutOff: SizeConstants.screenCutOff)
                ImageIndicaterView()

            }

            UserInfoView(showProfileModal:$showProfileModal).padding(.horizontal, 40)

        }.fullScreenCover(isPresented: $showProfileModal) {
            UserProfileView()
        }
        .frame(width: SizeConstants.cardWidth, height: SizeConstants.cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .offset(x: xOffset, y: 0)
        .rotationEffect(.degrees(degree))
        .gesture(
            DragGesture().onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )

    }

}

extension CardView {
    fileprivate func returnToCenter() {
        withAnimation(.smooth) {
            xOffset = 0
            degree = 0
        }

    }

    fileprivate func swipeRight() {
        withAnimation(.smooth) {
            xOffset = 500
            degree = 12
        } completion: {
            
            // TODO: Remove the card from card model
            print("Swiped Right")
            
        }
        

        

    }

    fileprivate func swipeLeft() {
        withAnimation(.smooth) {
            xOffset = -500
            degree = -12
        } completion: {
            // TODO: Remove the card from card model
            print("Swiped Right")
            
        }
        

        

    }

}

extension CardView {
    fileprivate func onDragChanged(_ value: DragGesture.Value) {
        withAnimation(.snappy) {
            xOffset = value.translation.width
            degree = value.translation.width / 25
        }

    }

    fileprivate func onDragEnded(_ value: DragGesture.Value) {
        let width = value.translation.width

        if abs(width) <= abs(SizeConstants.screenCutOff) {

            returnToCenter()
            return

        }

        if width >= SizeConstants.screenCutOff {
            swipeRight()
        } else {
            swipeLeft()
        }

    }

}

#Preview {
    CardView()
}
