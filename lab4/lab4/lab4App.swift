//
//  lab4App.swift
//  lab4
//
//  Created by macos on 1/2/26.
//

import SwiftUI
import Firebase


@main
struct lab4App: App {
    
    init() {
            FirebaseApp.configure()
        }
    var body: some Scene {
        WindowGroup {
            AuthView()
        }
    }
}
