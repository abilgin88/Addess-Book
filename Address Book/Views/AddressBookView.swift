//
//  ContentView.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct AddressBookView: View {
    var body: some View {
        ZStack {
            AppColor.mainColor
                .ignoresSafeArea()
            VStack { // VStack:1 -> For all views on screen
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
