//
//  AuthenticationCoordinator.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit
import RxSwift

protocol AuthenticationCordinatorDelegate: class {
    func didEndAuthenticationFlow(_ coordinator: Coordinator)
}

class AuthenticaionCoordintor: Coordinator {

    let uuid = UUID()
    weak var delegate: AuthenticationCordinatorDelegate?
    
    private let navigationController: UINavigationController
    private let disposeBag: DisposeBag = DisposeBag()
    
    init(navigationController: UINavigationController, delegate: AuthenticationCordinatorDelegate) {
        self.navigationController = navigationController
        self.delegate = delegate
    }
    
    deinit {
        print("AuthenticationCoordinator deinit")
    }
    
    func start() {
        showAuthentication()
    }
    
    private func showAuthentication() {
        let vm = AuthenticationViewModel(delegate: self)
        let vc = AuthenticationViewController(viewModel: vm)
        
        navigationController.pushViewController(vc, animated: false)
    }
    
    private func showLogin() {
        let vm = LoginViewModel(delegate: self)
        let vc = LoginViewController(viewModel: vm)
        
        navigationController.pushViewController(vc, animated: false)
    }
    
    private func showRegistration() {
        let vm = RegisterViewModel(delegate: self)
        let vc = RegisterViewController(viewModel: vm)
        
        navigationController.pushViewController(vc, animated: false)
    }
}

extension AuthenticaionCoordintor: AuthenticationViewModelDelegate {
    func loginTapped() {
        showLogin()
    }
    
    func signupTapped() {
        showRegistration()
    }
}

extension AuthenticaionCoordintor: LoginViewModelDelegate {
    func goToApp() {
        delegate?.didEndAuthenticationFlow(self)
    }
}

extension AuthenticaionCoordintor: RegisterViewModelDelegate {
    func goToLogin() {
        showLogin()
    }
}
