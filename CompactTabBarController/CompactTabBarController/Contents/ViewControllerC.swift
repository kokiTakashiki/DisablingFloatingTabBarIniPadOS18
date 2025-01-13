//
//  ViewControllerC.swift
//  BottomTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import UIKit

class ViewControllerC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        let label = UILabel().then {
            $0.text = "ViewController \(type(of: self))"
            $0.textColor = .black
            $0.textAlignment = .center
        }
        view.addSubview(label)
        (label as UIView).filled(view)
    }
}
