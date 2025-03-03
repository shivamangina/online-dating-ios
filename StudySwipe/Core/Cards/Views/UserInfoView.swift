//
//  UserInfoView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 25/01/25.
//

import SwiftUI

struct UserInfoView: View {
    
    @Binding var showProfileModal: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Mrunal")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("24")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    showProfileModal.toggle()
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            Text("Actress | Director").font(.subheadline)
        }
        
        .foregroundStyle(.white)
        .padding()
            .background(
            LinearGradient(colors: [.clear,.black], startPoint: .top, endPoint: .bottom)
        )
        
       
    }
}

#Preview {
    UserInfoView(showProfileModal:.constant(false))
}
