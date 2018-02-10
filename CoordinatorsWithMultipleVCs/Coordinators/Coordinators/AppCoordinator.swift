//
//  AppCoordinator.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

class AppCoordinator: BaseCoordinator {
    
    private var window: UIWindow?

    func start(with window: UIWindow) {
        self.window = window
        startAuthentication(window)
    }
    
    private func startAuthentication(_ window: UIWindow) {
        
        let nav = UINavigationController()
        let authCoordinator = AuthenticaionCoordintor(navigationController: nav, delegate: self)
        store(coordinator: authCoordinator)
        window.rootViewController = nav
        
        authCoordinator.start()
        
    }
    
    private func startApp(_ window: UIWindow) {
        
        let vc = UITabBarController()
        let tabBarCoordinator = TabBarCoordinator(viewController: vc, delegate: self)
        store(coordinator: tabBarCoordinator)
        window.rootViewController = vc
        
        tabBarCoordinator.start()
    }
}

extension AppCoordinator: AuthenticationCordinatorDelegate {
    func didEndAuthenticationFlow(_ coordinator: Coordinator) {
        free(coordinator: coordinator)
        guard let window = window else { return }
        startApp(window)
    }
}

extension AppCoordinator: TabBarCoordinatorDelegate {
    func didEndTabBarFlow(_ coordinator: Coordinator) {
        free(coordinator: coordinator)
        guard let window = window else { return }
        startAuthentication(window)
    }
}
