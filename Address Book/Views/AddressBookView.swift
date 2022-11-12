//
//  ContentView.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct AddressBookView: View {
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
                ContactsView() // Pass the ContactsView to the AddressBook
                Spacer() // After for all Contacts views
                
                Text("You have 0 favorite book")
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
