//
//  Contact.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import Foundation

// creating Contact structure
struct Contact {
    let name: String
    let postalCode: Int
    var isFavorite = false
    
    // ???
    var displayPostalCode: String { "Postal Code: \(String(postalCode))"}
}
