//
//  ContentView.swift
//  Address Book
//
//  Created by Abdullah Bilgin on 11/11/22.
//

import SwiftUI

struct AddressBook: View {
    var body: some View {
        ZStack {
            AppColor.mainColor
                .ignoresSafeArea()
            
            
            VStack { // VStack:1 -> For all views on screen
                Text("Address Book")
                    .font(.title)
                    .padding()
                
                Spacer() // after Title
                
                VStack { // VStack:2 ->include 4 Contacts views
                                 
                    
                    // HStack -> For Each Contact View
                    
                    // Contact view: 0
                        HStack {
                            
                            VStack{ // VStack:3 -> For 2 text line in Botton
                                Text("Name at index 0")
                                Text("Postal code")
                                    .font(.caption)
                            } // VStack:3 end
                            
                            
                            Button(action: { // For Star button
                                print("Star tapped at index: 0")
                            }) {
                                Image(systemName: "star")
                            }
                        } // HStack end: include one contact view
                        .padding()
                        .border(Color.black, width: 1)
                    
                    // Contact view: 1
                        HStack {
                            
                            VStack{ // VStack:3 -> For 2 text line in Botton
                                Text("Name at index 1")
                                Text("Postal code")
                                    .font(.caption)
                            } // VStack:3 end
                            
                            
                            Button(action: { // For Star button
                                print("Star tapped at index: 1")
                            }) {
                                Image(systemName: "star")
                            }
                        } // HStack end: include one contact view
                        .padding()
                        .border(Color.black, width: 1)
                        
                    // Contact view: 2
                        HStack {
                            
                            VStack{ // VStack:3 -> For 2 text line in Botton
                                Text("Name at index 2")
                                Text("Postal code")
                                    .font(.caption)
                            } // VStack:3 end
                            
                            
                            Button(action: { // For Star button
                                print("Star tapped at index: 2")
                            }) {
                                Image(systemName: "star")
                            }
                        } // HStack end: include one contact view
                        .padding()
                        .border(Color.black, width: 1)
                        
                    // Contact view: 3
                        HStack {
                            
                            VStack{ // VStack:3 -> For 2 text line in Botton
                                Text("Name at index 3")
                                Text("Postal code")
                                    .font(.caption)
                            } // VStack:3 end
                            
                            
                            Button(action: { // For Star button
                                print("Star tapped at index: 3")
                            }) {
                                Image(systemName: "star")
                            }
                        } // HStack end: include one contact view
                        .padding()
                        .border(Color.black, width: 1)
                        
                    
                    
                } // VStack:2 end
                
                Spacer() // After for all Contacts views
                
                Text("You have 0 favorite book")
                    .padding()
                
            } // VStack:1 end
        } // ZStack end
        
            

        }
        
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBook()
    }
}
