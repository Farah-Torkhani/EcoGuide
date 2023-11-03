//
//  EcoGuideApp.swift
//  EcoGuide
//
//  Created by Torkhani fara on 3/11/2023.
//

import SwiftUI

@main
struct EcoGuideApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
