//
//  SANSARAApp.swift
//  SANSARA
//
//  LIFE OS 2.0 — App entry point. SwiftData in Stage 4.
//

import SwiftUI

@main
struct SANSARAApp: App {
    @State private var themeManager = ThemeManager(initial: .day)
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environment(themeManager)
        }
    }
}
