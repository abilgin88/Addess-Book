//
//  ContactsView.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
            // A ForEach structure that allows us to loop through a collection of data and create a corresponding view for each element
            ForEach(0..<4, id: \.self) { index in
                
                // Refactoring the HStack
                HStack {
                    
                    VStack{ // VStack:3 -> For 2 text line in Botton
                        Text("Name at index \(index)")
                        Text("Postal code")
                            .font(.caption)
                    } // VStack:3 end
                    
                    
                    Button(action: { // For Star button
                        print("Star tapped at index: \(index)")
                    }) {
                        Image(systemName: "star")
                    }
                } // HStack end: include one contact view
                .padding()
                .border(Color.black, width: 1)
            }
        }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}