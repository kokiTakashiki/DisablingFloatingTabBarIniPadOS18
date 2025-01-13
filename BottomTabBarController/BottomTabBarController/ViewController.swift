//
//  ViewController.swift
//  BottomTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import UIKit

class ViewController: UIViewController {
    private var selection: BottomTabItem = .first
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tabBar = BottomTabBarController(
            selection: selection,
            items: BottomTabItem.allCases,
            contents: {
                ViewControllerA()
                ViewControllerB()
                ViewControllerD()
                ViewControllerE()
            }
        )
        tabBar.delegate = self
        view.addSubview(tabBar.view)
        tabBar.view.filled(view)
        addChild(tabBar)
        tabBar.didMove(toParent: self)
    }
}

extension ViewController: BottomTabBarControllerDelegate {
    func tabBarController(_ tabBarController: BottomTabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    func tabBarController(_ tabBarController: BottomTabBarController, didSelect viewController: UIViewController) {
        print("didSelect \(type(of: viewController))")
    }
    
    func tabBar(_ tabBarController: BottomTabBarController, didSelect item: BottomTabItem) {
        print("didSelect \(item)")
        if item == .third {
            let vc = ViewControllerC()
            tabBarController.present(vc, animated: true, completion: nil)
        }
    }
}

