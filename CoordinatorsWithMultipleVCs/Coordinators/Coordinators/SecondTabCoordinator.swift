//
//  SecondTabCoordinator.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

protocol SecondTabCoordinatorDelegate: class {
    func showErrorMessage(message: String)
}

class SecondTabCoordinator: TabCoordinator {
    
    let navigationController: UINavigationController = UINavigationController()
    private weak var delegate: SecondTabCoordinatorDelegate?
    
    init(delegate: SecondTabCoordinatorDelegate) {
        self.delegate = delegate
        showBase()
        
        let tabBarItem = UITabBarItem(title: "Second", image: nil, selectedImage: nil)
        navigationController.tabBarItem = tabBarItem
    }
    
    deinit {
        print("SecondTabCoordinator deinit")
    }
    
    private func showBase() {
        let vm = PresentationListViewModel(delegate: self)
        let vc = PresentationListViewController(viewModel: vm)
        
        navigationController.pushViewController(vc, animated: true)
    }
    
    private func showDetails(title: String) {
        let vm = PresentationDetailsViewModel(delegate: self)
        let vc = PresentationDetailsViewController(viewModel: vm)
        
        navigationController.pushViewController(vc, animated: true)
    }
}

extension SecondTabCoordinator: PresentationListViewModelDelegate {
    func showDetails(_ title: String) {
        showDetails(title: title)
    }
}

extension SecondTabCoordinator: PresentationDetailsViewModelDelegate {
    func showErrorMessage(message: String) {
        delegate?.showErrorMessage(message: message)
    }
}
