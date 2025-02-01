//
//  StudySwipeApp.swift
//  StudySwipe
//
//  Created by Shiva Kumar Mangina on 01/02/25.
//

import SwiftUI
import SwiftData

@main
struct StudySwipeApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
             TabBarView()
        }
        // .modelContainer(sharedModelContainer)
    }
}
