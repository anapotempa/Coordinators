//
//  RegisterViewController.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private let viewModel: RegisterViewModelType
    
    init(viewModel: RegisterViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: RegisterViewController.xibFilename, bundle: nil)
    }
    
    deinit {
        print("RegisterViewController deinit")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("It should not happen")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        viewModel.delegate?.goToLogin()
    }
}

extension RegisterViewController: InstantiatableFromXib {
    
    static var xibFilename: String {
        return "Register"
    }
}

