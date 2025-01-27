//
//  Models.swift
//  online-dating
//
//  Created by Shiva Kumar Mangina on 27/01/25.
//

import Foundation

struct User: Identifiable {
    let id: String
    let fullname: String
    var age: Int
    var profileImage: [String]
}
