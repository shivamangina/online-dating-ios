//
//  CardView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 25/01/25.
//

import SwiftUI

struct CardView: View {
    
    @State private var xOffset : CGFloat = 0
    @State private var degree : CGFloat = 0
    
    
   
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top){
                
                
                Image(.alex)
                    .resizable()
                    .scaledToFill()
                
                CardActionView(xOffset:$xOffset , screenCutOff: screenCutOff)
            }
                
            
            UserInfoView().padding(.horizontal, 40)
            
            
        }
.frame(width: cardWidth, height: cardHeight)
.clipShape(RoundedRectangle(cornerRadius: 20))
.offset(x: xOffset, y: 0)
.rotationEffect(.degrees(degree))
.gesture(
    DragGesture().onChanged({ value in
        withAnimation(.snappy){
            xOffset = value.translation.width
 degree = value.translation.width/25
        }
        
    })
    .onEnded({ value in
        
        withAnimation(.smooth){
            xOffset = 0
            degree = 0
        }
    })
)
        
    }
    
    
}

private extension CardView {
    
    var screenCutOff :CGFloat {
        (UIScreen.main.bounds.width / 2 ) * 0.8
    }
    
    
    
    var cardWidth : CGFloat {
        UIScreen.main.bounds.width - 20
    }
    
    var cardHeight : CGFloat {
        UIScreen.main.bounds.width * 1.45
    }
    
}



#Preview {
    CardView()
}
