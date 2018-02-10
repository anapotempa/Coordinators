//
//  AuthenticationViewController.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController {
    
    private let viewModel: AuthenticationViewModelType

    init(viewModel: AuthenticationViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: AuthenticationViewController.xibFilename, bundle: nil)
    }
    
    deinit {
        print("AuthenticationViewController deinit")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("It should not happen")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        viewModel.delegate?.loginTapped()
    }

    @IBAction func signupButtonTapped(_ sender: Any) {
        viewModel.delegate?.signupTapped()
    }
    
}

extension AuthenticationViewController: InstantiatableFromXib {
    
    static var xibFilename: String {
        return "Authentication"
    }
}
