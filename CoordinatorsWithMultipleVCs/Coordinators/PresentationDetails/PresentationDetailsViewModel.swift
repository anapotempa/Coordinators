//
//  PresentationDetailsViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

protocol PresentationDetailsViewModelDelegate: class {
    func showErrorMessage(message: String)
}

class PresentationDetailsViewModel: PresentationDetailsViewModelType {
    
    weak var delegate: PresentationDetailsViewModelDelegate?
    
    init(delegate: PresentationDetailsViewModelDelegate) {
        self.delegate = delegate
    }
}
