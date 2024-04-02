//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Januda Bethmin  on 2024-04-02.
//

import SwiftUI

// ContentView structure is inheriting a structure called View
struct ContentView: View {
    // Body is defined as a variable
    // some -> It says it is LIKE a structure called View
    var body: some View {
        // Vertical Stack (Like column in Android)
        VStack {
            
            // We have extracted the HStack into a subview called IconText()
            // We can pass the values we need to changes as arguments to this sub view
            IconText(text: "Welcome to my World!", iconName: "heart")
            
            // First we need to add the image into Assests
            Image("itzzjb")
                // Give the ability to image to be resized
                .resizable()
                .frame(width: 200,height: 200) // Width should be set before Height
            
            
            Spacer()
            MyButton()
            Spacer()
            
            Spacer() // The spacer will stretch out the getting the whole area it can get in the screen.
            // ( Verticaly or Horizontally )
            
            // We have extracted the HStack into a subview called IconText()
            // We can pass the values we need to changes as arguments to this sub view
            IconText(text: "It's me Januda!", iconName: "hand.wave")

        }
        // Modifiers are added after the View with a . at the start.
        // Here we adding the default padding
        .padding()
    }
}

// Generating a preview of the ContentView() view. (light-mode)
#Preview {
    ContentView()
}

// Generating a preview of the ContentView() view. (dark-mode)
#Preview {
    ContentView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}



