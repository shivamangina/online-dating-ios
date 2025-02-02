//
//  CardStackView.swift
//  StudySwipe
//
//  Created by Shiva Kumar Mangina on 27/01/25.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                ForEach(0..<10) { index in
                    CardView()
                }
            }
        }.toolbar {
            ToolbarItem(placement:.topBarLeading){
               // TODO: Image Not showing 
                Image(.pngegg)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 88)
                
            }
        }
    }
}

#Preview {
    CardStackView()
}
