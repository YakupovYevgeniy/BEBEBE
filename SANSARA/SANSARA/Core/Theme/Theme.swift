//
//  Theme.swift
//  SANSARA
//
//  LIFE OS 2.0 — Theme protocol for Day/Night switching.
//

import SwiftUI

protocol Theme {
    var background: Color { get }
    var cardBackground: Color { get }
    var textPrimary: Color { get }
    var textSecondary: Color { get }
    var accent: Color { get }
}
