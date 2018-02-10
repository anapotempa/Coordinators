//
//  FirstTabViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

class FirstTabViewModel: FirstTabViewModelType {
    weak var delegate: FirstTabViewModelDelegate?
    
    init(delegate: FirstTabViewModelDelegate) {
        self.delegate = delegate
    }
}
