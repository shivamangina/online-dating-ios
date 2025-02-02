//
//  CurrentUserProfileView.swift
//  StudySwipe
//
//  Created by Shiva Kumar Mangina on 02/02/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        VStack {
            
            NavigationStack{
                CurrentUserHeaderView()
                
                
                List{
                    Text("Edit")
                    Text("Settings")
                    
                }
                
                Button{
                    print("Logout")
                } label: {
                    Text("Logout").bold().padding(20)
                        .border(.black)
                        .presentationCornerRadius(20)
                        .buttonBorderShape(.capsule)
                }
                
                
            }
            
            
            ScrollView {}
            
            
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
