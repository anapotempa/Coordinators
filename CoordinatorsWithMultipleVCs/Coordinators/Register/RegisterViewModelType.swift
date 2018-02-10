//
//  RegisterViewModelType.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

protocol RegisterViewModelDelegate: class {
    func goToLogin()
}

protocol RegisterViewModelType: class {
    var delegate: RegisterViewModelDelegate? { get }
}
