//
//  AuthenticationViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

class AuthenticationViewModel: AuthenticationViewModelType {
    
    weak var delegate: AuthenticationViewModelDelegate?
    
    init(delegate: AuthenticationViewModelDelegate) {
        self.delegate = delegate
    }
}
