//
//  todo_swiftApp.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import FirebaseCore
import SwiftUI

@main
struct todo_swiftApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
