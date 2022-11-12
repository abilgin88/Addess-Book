//
//  AddressBook.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import Foundation

// ???
struct AddressBook {
    
    // Creating contacts array from Contact structure (Contact Model)
    private var contacts = [
        Contact(name: "Alexis", postalCode: 12429),
        Contact(name: "Ben", postalCode: 10012),
        Contact(name: "Bhaskar", postalCode: 14204),
        Contact(name: "Galina", postalCode: 13029),
    ]
    
    // ???
    mutating func toggleFavorite(atIndex index: Int) {
        contacts[index].isFavorite.toggle()
    }
    
    // ???
    func contact(atIndex index: Int) -> Contact {
        contacts[index]
    }
    
    // checking favorite contact by given index
    func contactIsFavorite(atIndex index: Int) -> Bool {
        contacts[index].isFavorite
    }
   
    // here we count how many Favorite do we have
    var numberOfFavorites: Int {
        var count = 0
        
        for contact in contacts {
            if contact.isFavorite {
                count += 1
            }
        }
        return count
    }
    
    // ???
    var numberOfContacts: Int {
        contacts.count
    }
}
