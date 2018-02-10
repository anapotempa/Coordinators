//
//  FirstTabCoordinator.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

protocol FirstTabCoordinatorDelegate: class {
    func didEndFlow()
}

class FirstTabCoordinator: BaseCoordinator, TabCoordinator {
    
    let navigationController: UINavigationController = UINavigationController()
    private weak var delegate: FirstTabCoordinatorDelegate?
    
    init(delegate: FirstTabCoordinatorDelegate) {
        super.init()
        self.delegate = delegate
        showBase()
        
        let tabBarItem = UITabBarItem(title: "First", image: nil, selectedImage: nil)
        navigationController.tabBarItem = tabBarItem
    }
    
    deinit {
        print("FirstTabCoordinator deinit")
    }
    
    private func showBase() {
        let vm = FirstTabViewModel(delegate: self)
        let vc = FirstTabViewController(viewModel: vm)
        
        navigationController.pushViewController(vc, animated: true)
    }
}

extension FirstTabCoordinator: FirstTabViewModelDelegate {
    func logout() {
        delegate?.didEndFlow()
    }
}
