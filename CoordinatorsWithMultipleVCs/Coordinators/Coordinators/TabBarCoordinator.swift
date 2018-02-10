//
//  TabBarCoordinator.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

protocol TabBarCoordinatorDelegate: class {
    func didEndTabBarFlow(_ coordinator: Coordinator)
}

class TabBarCoordinator: Coordinator {
    
    let uuid: UUID = UUID()
    weak var delegate: TabBarCoordinatorDelegate?
    
    private let tabBarController: UITabBarController
    private var coordinators: [TabCoordinator] = []
    
    init(viewController: UITabBarController, delegate: TabBarCoordinatorDelegate) {
        self.tabBarController = viewController
        self.delegate = delegate
        
        coordinators = [FirstTabCoordinator(delegate: self),
                        SecondTabCoordinator(delegate: self)]
        
        tabBarController.viewControllers = coordinators.map({ $0.navigationController })
        tabBarController.selectedIndex = 0
    }
    
    deinit {
        print("TabBarCoordinator deinit")
    }
    
    func start() {
        
    }
}

extension TabBarCoordinator: FirstTabCoordinatorDelegate {
    func didEndFlow() {
        coordinators.removeAll()
        self.delegate?.didEndTabBarFlow(self)
    }
}

extension TabBarCoordinator: SecondTabCoordinatorDelegate {
    func showErrorMessage(message: String) {
        
    }
}
