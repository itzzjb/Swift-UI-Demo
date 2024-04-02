//
//  MyButton.swift
//  SwiftUIDemo
//
//  Created by Januda Bethmin  on 2024-04-02.
//

import Foundation
import SwiftUI

struct MyButton : View {
    // We need to put @State becuase when we change the value of this variable the State of the UI should change
    @State var buttonText: String = "Un-clicked Button"
    var body : some View {
        // In Stack we we arrage Views on top of each other
        ZStack {
            
            // We use a rectangle to add a gradiant fill
            Rectangle()
                // Giving a gradiant color combination to the button
                .fill(Gradient(colors: [Color.black, Color.gray]))
                // Setting the width and height of the button
                .frame(width:200 ,height: 30) // Width should be set before Height
                // Rounding the corners of the button
                .cornerRadius(5)
                // Telling the button to ignore the safe area of the iphone
                .ignoresSafeArea()
            
            // For a button we need a action and a label
            Button {
                // This action will be performed when we click the button
                // This will be printed in the log area ( like TomCat )
                print("Clicked on button")
                buttonText =  "Clicked-Button"
            } label: {
                Text(buttonText).foregroundColor(Color.white)
            }
            
        }
        .padding(10)
        
    }
}
