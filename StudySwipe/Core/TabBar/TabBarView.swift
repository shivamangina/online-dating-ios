//
//  TabBarView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 25/01/25.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem {
                    Image(systemName: "flame")
                }
                
                .tag(0)
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            Text("Inbox View")
                .tabItem {
                    Image(systemName: "bubble")
                }
                .tag(2)
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(3)
            
        }.tint(.primary)
    }
}

#Preview {
    TabBarView()
}

