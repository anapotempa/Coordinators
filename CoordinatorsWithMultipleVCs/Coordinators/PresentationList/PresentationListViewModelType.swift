//
//  PresentationListViewModelType.swift
//  Sample
//
//  Created by Anna Potempa on 05.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation
import RxSwift

protocol PresentationListViewModelDelegate: class {
    func showDetails(_ title: String)
}

protocol PresentationListViewModelType {
    
    var sectionViewModels: [[PresentationCellViewModel]] { get }
    var showDetails: PublishSubject<String> { get }
    weak var delegate: PresentationListViewModelDelegate? { get }
}
