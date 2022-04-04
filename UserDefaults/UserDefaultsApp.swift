//
//  UserDefaultsApp.swift
//  UserDefaults
//
//  Created by Abduqaxxor on 5/4/22.
//

import SwiftUI

@main
struct UserDefaultsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
