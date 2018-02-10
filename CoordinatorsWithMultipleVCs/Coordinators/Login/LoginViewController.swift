//
//  LoginViewController.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit
import RxSwift

class LoginViewController: UIViewController {
    
    private let viewModel: LoginViewModelType
    
    init(viewModel: LoginViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: LoginViewController.xibFilename, bundle: nil)
    }
    
    deinit {
        print("LoginViewController deinit")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("It should not happen")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
       viewModel.delegate?.goToApp()
    }
    
}

extension LoginViewController: InstantiatableFromXib {
    
    static var xibFilename: String {
        return "Login"
    }
}

