//
//  LoginViewModelType.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

protocol LoginViewModelDelegate: class {
    func goToApp()
}

protocol LoginViewModelType: class {
    var delegate: LoginViewModelDelegate? { get }
}
