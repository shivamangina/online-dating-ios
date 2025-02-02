//
//  CurrentUserHeaderView.swift
//  StudySwipe
//
//  Created by Shiva Kumar Mangina on 02/02/25.
//

import SwiftUI

struct CurrentUserHeaderView: View {
    var body: some View {
        VStack {
            Image(.mrunal)
                .resizable()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .background{
                    Circle().fill(Color.gray)
                        .frame(width: 120, height: 120)
                        .shadow(radius: 10)
                }
                
                
            
            
            Text("Mrunal")
                .font(.headline)
        }
    }
}

#Preview {
    CurrentUserHeaderView()
}
