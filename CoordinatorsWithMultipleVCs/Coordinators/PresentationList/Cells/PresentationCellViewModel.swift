//
//  PresentationCellViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 07.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation
import RxSwift

class PresentationCellViewModel {
    
    let title: String
    let showDetails: PublishSubject<String>
    
    init(title: String, action: PublishSubject<String>) {
        self.title = title
        self.showDetails = action
    }
}
