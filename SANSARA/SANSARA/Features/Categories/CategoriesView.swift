//
//  CategoriesView.swift
//  SANSARA
//
//  Stage 3 placeholder — grid of category tiles.
//

import SwiftUI

struct CategoriesView: View {
    @Environment(\.theme) private var theme
    
    var body: some View {
        NavigationStack {
            ZStack {
                theme.background.ignoresSafeArea()
                VStack(spacing: 16) {
                    Image(systemName: "list.bullet.rectangle.fill")
                        .font(.system(size: 48))
                        .foregroundStyle(theme.accent)
                    Text("Categories")
                        .font(.title)
                        .foregroundStyle(theme.textPrimary)
                    Text("Health, Finance, Habits, Tasks, Notes")
                        .font(.subheadline)
                        .foregroundStyle(theme.textSecondary)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .navigationTitle("Categories")
            .toolbarBackground(theme.background, for: .navigationBar)
        }
    }
}

#Preview("Day") {
    CategoriesView()
        .environment(\.theme, DayTheme())
}

#Preview("Night") {
    CategoriesView()
        .environment(\.theme, NightTheme())
}
