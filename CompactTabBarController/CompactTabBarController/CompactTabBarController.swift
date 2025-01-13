//
//  CompactTabBarController.swift
//  CompactTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import Then
import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        traitOverrides.horizontalSizeClass = .compact // 👈 Override like this, use `.unspecified` to see all tabs.
    }
}

class CompactTabBarController: UITabBarController {
    enum TabBarItem: Int {
        case home
        case cards
        case camera
        case person
        case note
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            // 縦
            traitOverrides.verticalSizeClass = .regular
            // タブ数が５個より多いと５個目に「More」が表示される
            traitOverrides.horizontalSizeClass = .compact // 👈 Override like this, use `.unspecified` to see all tabs.
            // タブ数が８個より多いと８個目に「More」が表示される
            // traitOverrides.horizontalSizeClass = .unspecified
        }
        
        // 通常時のタブバーを白くする
        tabBar.backgroundColor = .white
        
        // Moreが表示された時のタブバーを白くする
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .white
        tabBar.standardAppearance = appearance
        
        viewControllers = [
            ViewControllerA().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Home",
                    image: UIImage(systemName: "house"),
                    tag: TabBarItem.home.rawValue
                )
            },
            ViewControllerB().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Cards",
                    image: UIImage(systemName: "person.text.rectangle"),
                    tag: TabBarItem.cards.rawValue
                    
                )
            },
            UIViewController().then {
                $0.tabBarItem = UITabBarItem(
                    title: nil,
                    image: UIImage(systemName: "camera"),
                    tag: TabBarItem.camera.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            },
            ViewControllerD().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Person",
                    image: UIImage(systemName: "person"),
                    tag: TabBarItem.person.rawValue
                )
            },
            ViewControllerE().then {
                $0.tabBarItem = UITabBarItem(
                    title: "Note",
                    image: UIImage(systemName: "note"),
                    tag: TabBarItem.note.rawValue
                )
            }
        ]
    }
}

extension CompactTabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == TabBarItem.camera.rawValue {
            let vc = ViewControllerC()
            present(vc, animated: true, completion: nil)
        }
    }

    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return viewController.tabBarItem.tag != TabBarItem.camera.rawValue
    }
}
