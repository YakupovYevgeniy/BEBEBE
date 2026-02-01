//
//  MainTabView.swift
//  SANSARA
//
//  Tab bar: Home | Categories | Quick Add
//

import SwiftUI

struct MainTabView: View {
    @Environment(ThemeManager.self) private var themeManager
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.grid.2x2")
                }
            QuickAddView()
                .tabItem {
                    Label("Add", systemImage: "plus.circle.fill")
                }
        }
        .environment(\.theme, themeManager.theme)
    }
}

#Preview {
    MainTabView()
        .environment(ThemeManager(initial: .day))
}
