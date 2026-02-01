//
//  HomeView.swift
//  SANSARA
//
//  Stage 3 placeholder — dashboard will show category cards.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.theme) private var theme
    @Environment(ThemeManager.self) private var themeManager
    
    var body: some View {
        NavigationStack {
            ZStack {
                theme.background.ignoresSafeArea()
                VStack(spacing: 16) {
                    Image(systemName: "square.grid.2x2.fill")
                        .font(.system(size: 48))
                        .foregroundStyle(theme.accent)
                    Text("Home")
                        .font(.title)
                        .foregroundStyle(theme.textPrimary)
                    Text("Category cards will appear here")
                        .font(.subheadline)
                        .foregroundStyle(theme.textSecondary)
                }
                .padding()
            }
            .navigationTitle("LIFE OS")
            .toolbarBackground(theme.background, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        themeManager.toggle()
                    } label: {
                        Image(systemName: themeManager.currentTheme == .day ? "moon.fill" : "sun.max.fill")
                            .foregroundStyle(theme.accent)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .environment(ThemeManager(initial: .day))
        .environment(\.theme, DayTheme())
}
