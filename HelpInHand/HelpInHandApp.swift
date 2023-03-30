//
//  HelpInHandApp.swift
//  HelpInHand
//
//  Created by Joe Sinclair on 30/3/2023.
//

import SwiftUI

@main
struct HelpInHandApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
