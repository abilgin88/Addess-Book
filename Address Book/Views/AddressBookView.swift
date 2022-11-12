//
//  ContentView.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct AddressBookView: View {
    // TODO: STATEOBJECT - Add property wrapper to viewModel so that it observes changes
    private var viewModel = AddressBookViewModel()
    
    // TODO: STATE - Add property wrapper to displayFavoriteCount property so it can be reassigned
    @State private var displayFavoriteCount = true
    
    var body: some View {
        // to cover whole screen
        ZStack {
            // adding main color for whole screen with safe area
            AppColor.mainColor
                .ignoresSafeArea()
            
            // VStack:1 -> For all views on screen
            VStack {
                Text("Address Book")
                    .font(.title)
                    .padding()
                Spacer() // after Title
                ContactsView() // Pass the ContactsView to the AddressBook //TODO: ENVIRONMENTOBJECT - Pass the viewModel to the ContactsView
                Spacer() // After for all Contacts views
                
                // adding a text and add "s" based on favorited Contacts Count
                if displayFavoriteCount {
                    HStack {
                        Text("You have \(viewModel.favoritedContactCount) favorite" + (viewModel.favoritedContactCount != 1 ? "s" : ""))
                            .padding()
                    }
                }
                
                // TODO: STATE - Add toggle for displayFavoriteCount
                
                Toggle("Display number of favorites", isOn: $displayFavoriteCount)
                    .padding()
                
            } // VStack:1 end
            
            

        } // ZStack end
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}
