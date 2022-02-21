//
//  animationApp.swift
//  animation
//
//  Created by Abduqaxxor on 21/2/22.
//

import SwiftUI

@main
struct animationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
