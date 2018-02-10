//
//  RegisterViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

class RegisterViewModel: RegisterViewModelType {
    
    weak var delegate: RegisterViewModelDelegate?
    
    init(delegate: RegisterViewModelDelegate) {
        self.delegate = delegate
    }
}
