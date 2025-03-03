//
//  CardModel.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 27/01/25.
//

import Foundation

struct CardModel {
    let user: User

}

extension CardModel: Identifiable {
    var id: String {
        return user.id
    }
}
