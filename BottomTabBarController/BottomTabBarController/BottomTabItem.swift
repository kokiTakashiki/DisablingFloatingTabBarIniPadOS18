//
//  BottomTabItem.swift
//  BottomTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import Foundation

enum BottomTabItem: Int, CaseIterable {
    case first = 0
    case second
    case third
    case fourth
    case fifth

    var icon: String {
        switch self {
            case .first: return "house"
            case .second: return "person.text.rectangle"
            case .third: return "camera"
            case .fourth: return "person"
            case .fifth: return "note"
        }
    }
    var title: String? {
        switch self {
            case .first: return "Home"
            case .second: return "Cards"
            case .third: return nil
            case .fourth: return "Person"
            case .fifth: return "Note"
        }
    }
    var hasViewController: Bool {
        switch self {
            case .first: return true
            case .second: return true
            case .third: return false
            case .fourth: return true
            case .fifth: return true
        }
    }
}
