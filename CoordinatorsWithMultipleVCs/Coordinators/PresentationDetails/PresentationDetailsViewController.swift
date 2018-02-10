//
//  PresentationDetailsViewController.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

class PresentationDetailsViewController: UIViewController {
    
    let viewModel: PresentationDetailsViewModelType
    
    init(viewModel: PresentationDetailsViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: PresentationDetailsViewController.xibFilename, bundle: nil)
    }
    
    deinit {
        print("PresentationDetailsViewController deinit")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("It should not happen")
    }
    
    @IBAction func ShowErrorMessage(_ sender: Any) {
        viewModel.delegate?.showErrorMessage(message: "Some ERROR mesage")
    }
}

extension PresentationDetailsViewController: InstantiatableFromXib {
    
    static var xibFilename: String {
        return "PresentationDetails"
    }
}
