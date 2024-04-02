//
//  IconText.swift
//  SwiftUIDemo
//
//  Created by Januda Bethmin  on 2024-04-02.
//

import Foundation
import SwiftUI

// This is a subview for IconText
// We reuse this subview in our ContentView
struct IconText: View {
    // We would need to change the values of subview
    // We need to create variables for them
    // We can give default values for these too.
    var text: String = "Default Text"
    var iconName: String = "globe"
    
    var body: some View {
        // Horizontal Stack (Like row in Android)
        HStack {
        
            Text(text)
                .font(.headline) // Changing the font style into a pre-defined headline font.
            // When we use predefined stuff it is easy for us to do changes for whole application at once.
            
            // We are using a systemName to find a predefined icons of iOS
            Image(systemName: iconName)
                // Instead of changing the color like Color.black we can changing by adding custom color set to assests
                // There we can set two colors for both dark mode and light mode
                // We use Color.init() to call the color
                .foregroundColor(Color.init("text-color")) // Changing the foregrounf color of the text
                .imageScale(.large) // Changing the size of the image
                .foregroundStyle(.tint)
            
        }.padding(20)
        // Here we overiding the padding size to 20
    }
}
