//
//  SpitefulKindleApp.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 28/12/2024.
//

import SwiftUI
import SwiftData


@main
struct SpitefulKindleApp: App {
  
    var body: some Scene {
        WindowGroup {
            RootView()
               
        }
        .modelContainer(for: Fic.self)
    }
}
