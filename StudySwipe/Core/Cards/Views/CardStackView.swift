//
//  CardStackView.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 27/01/25.
//

import SwiftUI

struct CardStackView: View {
    var body: some View {
        ZStack {
            ForEach(0..<10) { index in
                CardView()
            }
        }
    }
}

#Preview {
    CardStackView()
}
