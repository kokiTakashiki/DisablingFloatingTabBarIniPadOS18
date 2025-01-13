//
//  ViewController.swift
//  CompactTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tabBarController = CompactTabBarController()
        view.addSubview(tabBarController.view)
        tabBarController.view.filled(view)
        addChild(tabBarController)
        tabBarController.didMove(toParent: self)
    }


}

extension UIView {
    func filled(_ target: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: target.leadingAnchor),
            trailingAnchor.constraint(equalTo: target.trailingAnchor),
            topAnchor.constraint(equalTo: target.topAnchor),
            bottomAnchor.constraint(equalTo: target.bottomAnchor)
        ])
    }
    
    func filled(_ target: UIView, with layoutGuide: UILayoutGuide) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor),
            topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor)
        ])
    }
}
