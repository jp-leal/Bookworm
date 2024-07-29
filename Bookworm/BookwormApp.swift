//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Joao Leal on 7/29/24.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView() 
                .modelContainer(for: Book.self)
        }
    }
}
