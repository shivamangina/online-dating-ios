//
//  CardView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 25/01/25.
//

import SwiftUI

struct CardView: View {
    
    
   
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.mrunal)
                .resizable()
                .scaledToFill()
                .frame(width: cardWidth, height: cardHeight)
                .cornerRadius(10)
            
            
        }
    }
    
    
}

private extension CardView {
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
