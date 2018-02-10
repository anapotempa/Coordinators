//
//  PresentationDetailsViewModelType.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation

protocol PresentationDetailsViewModelType: class {
    weak var delegate: PresentationDetailsViewModelDelegate? { get }
}
