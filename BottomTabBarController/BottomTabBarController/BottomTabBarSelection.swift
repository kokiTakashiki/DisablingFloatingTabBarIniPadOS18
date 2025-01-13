//
//  BottomTabBarSelection.swift
//  BottomTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import Foundation

class BottomTabBarSelection {
    @Published var selection: BottomTabItem
    public init(selection: BottomTabItem) {
        self.selection = selection
    }
}
