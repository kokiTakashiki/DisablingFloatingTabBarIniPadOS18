//
//  ArrayBuilder.swift
//  BottomTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import Foundation

@resultBuilder
struct ArrayBuilder<T> {
    // 配列の要素をまとめる基本メソッド
    static func buildBlock(_ components: T...) -> [T] {
        components
    }

    // Optionalな要素を処理するメソッド
    static func buildOptional(_ component: [T]?) -> [T] {
        component ?? []
    }

    // if-elseの条件分岐の最初のケース
    static func buildEither(first component: [T]) -> [T] {
        component
    }

    // if-elseの条件分岐の2番目のケース
    static func buildEither(second component: [T]) -> [T] {
        component
    }

    // for-inループを処理するメソッド
    static func buildArray(_ components: [[T]]) -> [T] {
        components.flatMap { $0 }
    }
}
