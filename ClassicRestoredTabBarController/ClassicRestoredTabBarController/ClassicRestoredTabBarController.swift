//
//  ClassicRestoredTabBarController.swift
//  ClassicRestoredTabBarController
//
//  Created by takedatakashiki on 2025/01/14.
//

import UIKit

// refer: https://stackoverflow.com/questions/78631030/how-to-disable-the-new-uitabbarcontroller-view-style-in-ipados-18
class ClassicRestoredTabBarController: UITabBarController {
    enum TabBarItem: Int {
        case home
        case cards
        case camera
        case person
        case note
    }

    /// Active for iPads running iOS 18+ where the traditional tab bar has been removed by Apple
    lazy var alternateTabBarActive: Bool = {
    #if compiler(>=6.0) // Compiler flag for Xcode >= 16
        if #available(iOS 18.0, *), UIDevice.current.userInterfaceIdiom == .pad {
            self.isTabBarHidden = true
            return true
        }
    #endif
        return false
    }()
    
    var tabBarHeightConstraint: NSLayoutConstraint?
    
    lazy var alternateTabBar: UITabBar = {
        UITabBar()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self

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
        
        if self.alternateTabBarActive {
            self.tabBar.isHidden = true
            
            self.alternateTabBar.items = self.tabBar.items
            self.alternateTabBar.selectedItem = self.tabBar.selectedItem
            
            if UIDevice.current.userInterfaceIdiom == .pad {
                // Add Custom Tabbar
                let tabbar = self.alternateTabBar
                
                // タブバーを白くする
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = .white
                tabbar.standardAppearance = appearance
                self.view.addSubview(tabbar)
                
                // Add layout constraints
                tabbar.translatesAutoresizingMaskIntoConstraints = false
                let bottom = tabbar.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
                let leading = tabbar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
                let trailing = tabbar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
                let height = NSLayoutConstraint(item: self.alternateTabBar, attribute: .height, relatedBy: .equal,
                                                toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 1)
                self.tabBarHeightConstraint = height
                self.view.addConstraints([bottom, leading, trailing, height])
            }
        }
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        if self.alternateTabBarActive {
            self.alternateTabBar.items = self.tabBar.items
            self.alternateTabBar.selectedItem = self.tabBar.selectedItem
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if self.alternateTabBarActive {
            // Adjust height constraint
            let height = self.alternateTabBar.intrinsicContentSize.height
            self.tabBarHeightConstraint?.constant = height
            
            // Set insets for child view controllers
            let bottomInset = self.alternateTabBar.frame.size.height-self.view.safeAreaInsets.bottom
            self.viewControllers?.forEach { $0.additionalSafeAreaInsets = UIEdgeInsets(top: 0, left: 0, bottom: bottomInset, right: 0) }
        }
    }

}

extension ClassicRestoredTabBarController: UITabBarControllerDelegate {
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
