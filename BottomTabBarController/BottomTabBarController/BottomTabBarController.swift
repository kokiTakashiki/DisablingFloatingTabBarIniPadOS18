//
//  BottomTabBarController.swift
//  BottomTabBarController
//
//  Created by takedatakashiki on 2025/01/10.
//

import Combine
import Then
import UIKit

typealias ViewControllerBuilder = ArrayBuilder<UIViewController>

protocol BottomTabBarControllerDelegate: AnyObject {
    func tabBarController(_ tabBarController: BottomTabBarController, shouldSelect viewController: UIViewController) -> Bool
    func tabBarController(_ tabBarController: BottomTabBarController, didSelect viewController: UIViewController)
    func tabBar(_ tabBarController: BottomTabBarController, didSelect item: BottomTabItem)
}

class BottomTabBarController: UIViewController {
    typealias TabItem = BottomTabItem
    typealias TabBarSelection = BottomTabBarSelection
    
    private let selectedItem: TabBarSelection
    private let viewControllers: [TabItem: UIViewController]
    private var items: [TabItem]
    private var canselables: Set<AnyCancellable> = []
    public weak var delegate: BottomTabBarControllerDelegate!
    
    init(
        selection: TabItem,
        items: [TabItem],
        @ViewControllerBuilder contents: () -> [UIViewController]
    ) {
        self.selectedItem = .init(selection: selection)
        self.viewControllers = Dictionary(uniqueKeysWithValues: zip(items.filter { $0.hasViewController }, contents()))
        self.items = items
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("IBからは利用しない")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.addSubview(content)
        content.filled(view)
        view.addSubview(body)
        body.filled(view, with: view.safeAreaLayoutGuide)
        
        // set space
        tabBar.addSubview(space)
        space.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            space.topAnchor.constraint(equalTo: tabBar.bottomAnchor),
            space.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            space.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            space.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private lazy var body = UIStackView().then {
        $0.axis = .vertical
        $0.alignment = .fill
        $0.distribution = .equalCentering
        $0.addArrangedSubview(
            UIView()
        )
        $0.addArrangedSubview(
            tabBar
        )
    }
    
    private lazy var space = UIView().then {
        $0.backgroundColor = .white
    }
    
    private lazy var content: UIView = {
        let body = UIView()
        viewControllers.forEach { content in
            body.addSubview(content.value.view)
            content.value.view.filled(body)
            addChild(content.value)
            content.value.didMove(toParent: self)
            // hasViewControllerがfalseの場合はきりかえない
            self.selectedItem.$selection.sink {
                guard $0.hasViewController else { return }
                content.value.view.isHidden = $0.hashValue != content.key.hashValue
            }.store(in: &canselables)
        }
        return body
    }()
    
    private lazy var tabBar: UIView = {
        let body = UIStackView().then {
            $0.axis = .horizontal
            $0.alignment = .fill
            $0.distribution = .fillEqually
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.heightAnchor.constraint(equalToConstant: 32).isActive = true
        }
        body.backgroundColor = .white
        items.forEach { item in
            body.addArrangedSubview(
                UIButton().then { button in
                    button.setImage(UIImage(systemName: item.icon), for: .normal)
                    button.setTitle(item.title, for: .normal)
                    button.titleLabel?.font = .systemFont(ofSize: 12)
                    
                    if !item.hasViewController { button.isEnabled = true }
                    
                    self.selectedItem.$selection.sink {
                        guard item.hasViewController else { return }
                        button.setTitleColor(
                            $0.hashValue == item.hashValue ? .systemBlue : .systemGray,
                            for: .normal
                        )
                        button.tintColor = $0.hashValue == item.hashValue ? .systemBlue : .systemGray
                        
                    }.store(in: &canselables)
                    
                    button.addAction(.init(handler: { [weak self] _ in
                        guard let self else { return }
                        self.delegate.tabBar(self, didSelect: item)
                        guard let selectedViewController = self.viewControllers[item] else { return }
                        if self.delegate.tabBarController(self, shouldSelect: selectedViewController) {
                            self.selectedItem.selection = item
                            self.delegate.tabBarController(self, didSelect: selectedViewController)
                        }
                    }), for: .touchUpInside)
                }
            )
        }
        return body
    }()
}
