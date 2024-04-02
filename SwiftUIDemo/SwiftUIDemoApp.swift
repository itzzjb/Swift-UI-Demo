//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Januda Bethmin  on 2024-04-02.
//


// ...App.swift
// This is kind of like the main enterpoint of the application.

import SwiftUI

// @main -> Says iOS at the runtime that it's gonna be the main execution of the application
@main
// Like the concept of classes in Kotlin here we have the concept of structues. (struct)
// It's inheriting a structure called App ( Comes with SwiftUI import )
struct SwiftUIDemoApp: App {
    // Body is defined as a variable
    // some -> It says it is LIKE a structure called Scene
    var body: some Scene {
        // WindowGroup {} -> Used to display something
        WindowGroup {
            // Whatever we need to show is here
            // Normally calls a structure that is in another .. .swift file.
            ContentView()
        }
    }
}
