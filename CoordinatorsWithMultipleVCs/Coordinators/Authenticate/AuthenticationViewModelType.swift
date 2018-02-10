//
//  AuthenticationViewModelType.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

protocol AuthenticationViewModelDelegate: class {
    func loginTapped()
    func signupTapped()
}

protocol AuthenticationViewModelType: class {
    var delegate: AuthenticationViewModelDelegate? { get }
}
