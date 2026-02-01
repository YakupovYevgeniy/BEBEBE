//
//  ThemeManager.swift
//  SANSARA
//

import SwiftUI

enum AppTheme: String, CaseIterable {
    case day
    case night
}

@Observable
final class ThemeManager {
    var currentTheme: AppTheme {
        didSet {
            theme = resolveTheme()
        }
    }
    
    private(set) var theme: Theme
    
    init(initial: AppTheme = .day) {
        self.currentTheme = initial
        self.theme = initial == .day ? DayTheme() : NightTheme()
    }
    
    private func resolveTheme() -> Theme {
        switch currentTheme {
        case .day: return DayTheme()
        case .night: return NightTheme()
        }
    }
    
    func toggle() {
        currentTheme = currentTheme == .day ? .night : .day
    }
}
