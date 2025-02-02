//
//  UserProfileView.swift
//  StudySwipe
//
//  Created by Shiva Kumar Mangina on 02/02/25.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            HStack {
                
                Text("Maegon")
                    .font(.title)
                
                Text("37")
                    .font(.title3)
                
                Spacer()
                
                Button {
                    print("Button Tapped")
                } label: {
                    Text("Close")
                }
                
                
                
            }.padding(20)
            
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    
                    Text("About Me")
                        .font(.headline)
                    
                    Text("I am a passionate iOS developer and a huge fan of SwiftUI.")
                        .font(.body)
                    
                
                    
                    Text("Gender")
                        .font(.headline)
                    
                    HStack {
                        
                        Image(systemName:"arrow.down.forward.and.arrow.up.backward.circle")
                        
                        Text("Female")
                            .font(.body)
                        
                        
                        
                    }
                    
                    
                }
                
                
                
                
                
                
                
                
                
                
                
            }
            
            
        }
    }
}

#Preview {
    UserProfileView()
}
