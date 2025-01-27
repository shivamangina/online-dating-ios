//
//  ImageScrollOverlayView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 26/01/25.
//

import SwiftUI

struct ImageScrollOverlayView: View {
    
//  TODO: GET THE current image from the 
//    @Binding var currentImage: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.white.opacity(0.01))
                .onTapGesture {
                    print("Left Tapped")
                }
            Rectangle()
                .fill(Color.white.opacity(0.01))
                .onTapGesture {
                    print("Right Tapped")
                }
                
        }
        
    }
}

private extension ImageScrollOverlayView {
    
    // TODO: add the functionality for changeing image
    
}

#Preview {
    ImageScrollOverlayView()
}
