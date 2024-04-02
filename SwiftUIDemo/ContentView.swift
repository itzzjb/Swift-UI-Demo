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
            // Horizontal Stack (Like row in Android)
            HStack {
                
                Text("Welcome to my world!")
                    .font(.headline) // Changing the font style into a pre-defined headline font.
                    // When we use predefined stuff it is easy for us to do changes for whole application at once.
                
                // We are using a systemName to find a predefined icons of iOS
                Image(systemName: "heart.fill")
                    .foregroundColor(.blue) // Changing the foregrounf color of the text
                    .imageScale(.large) // Changing the size of the image
                    .foregroundStyle(.tint)
                
            }.padding(20) // Here we overiding the padding size to 20

        }
        // Modifiers are added after the View with a . at the start.
        // Here we adding the default padding
        .padding()
    }
}

// Generating a preview of the ContentView() view.
#Preview {
    ContentView()
}
