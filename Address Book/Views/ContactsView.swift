//
//  ContactsView.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
// this view include contactsView for display Contact views on screen

import SwiftUI
struct ContactsView: View {
    // TODO: ENVIRONMENTOBJECT - Add view model
    @EnvironmentObject var viewModel: AddressBookViewModel
    
    var body: some View {
            // A ForEach structure that allows us to loop through a collection of data and create a corresponding view for each element
        ForEach(0..<viewModel.contactCount, id: \.self) { index in //TODO: ENVIRONMENTOBJECT - Use the number of contacts from the view model
                
                // Refactoring the HStack
                HStack {
                    // 2 Add contact
                    let contact = viewModel.contact(atIndex: index)
                    
                    VStack{ // VStack:3 -> For 2 text line in Botton
                        // TODO: ENVIRONMENTOBJECT - Add the correct name and postal code
                        
                        Text(contact.name)
                        Text(contact.displayPostalCode)
                            .font(.caption2)
                    } // VStack:3 end
                    
                    
                    Button(action: { // For Star button
                        // TODO: ENVIRONMENTOBJECT - Call the appropriate view model method
                        viewModel.toggleFavorite(atIndex: index)
                        
                    }) {
                        //TODO: ENVIRONMENTOBJECT - Update the star to be filled when the contact is a favorite
                        contact.isFavorite ? Image(systemName: "star.fill") : Image(systemName: "star")
                    }
                } // HStack end: include one contact view
                .padding()
                .border(Color.black, width: 1)
            }
        }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView() // TODO: ENVIRONMENTOBJECT - Add the view model to the preview
            .environmentObject(AddressBookViewModel())
    }
}
