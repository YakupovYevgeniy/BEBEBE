//
//  QuickAddView.swift
//  SANSARA
//
//  Stage 3 placeholder — contextual add button target.
//

import SwiftUI

struct QuickAddView: View {
    @Environment(\.theme) private var theme
    
    var body: some View {
        NavigationStack {
            ZStack {
                theme.background.ignoresSafeArea()
                VStack(spacing: 16) {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 48))
                        .foregroundStyle(theme.accent)
                    Text("Quick Add")
                        .font(.title)
                        .foregroundStyle(theme.textPrimary)
                    Text("Add task, note, habit, or health entry")
                        .font(.subheadline)
                        .foregroundStyle(theme.textSecondary)
                        .multilineTextAlignment(.center)
                }
                .padding()
            }
            .navigationTitle("Quick Add")
            .toolbarBackground(theme.background, for: .navigationBar)
        }
    }
}

#Preview {
    QuickAddView()
        .environment(\.theme, DayTheme())
}
