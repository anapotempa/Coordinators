//
//  ViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 07.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

protocol ViewModel {
    associatedtype Services
    init(withServices services: Services)
}

protocol ViewModelBased: class {
    associatedtype ViewModelType: ViewModel
    var viewModel: ViewModelType { get set }
}

extension ViewModelBased where Self: UIViewController & InstantiatableFromXib {
    static func instantiate<ServiceT>(withServices services: ServiceT) -> Self where ServiceT == Self.ViewModelType.Services {
        let vm = ViewModelType(withServices: services)
        let vc = Self(nibName: Self.xibFilename, bundle: nil)
        vc.viewModel = vm

        return vc
    }
}
