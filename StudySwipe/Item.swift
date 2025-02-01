//
//  Item.swift
//  StudySwipe
//
//  Created by Shiva Kumar Mangina on 01/02/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
