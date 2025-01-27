//
//  SizeConstants.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 26/01/25.
//

import SwiftUI

struct SizeConstants {
    
    static var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }

    static var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }

    static var cardHeight: CGFloat {
        UIScreen.main.bounds.width * 1.45
    }
    
}
