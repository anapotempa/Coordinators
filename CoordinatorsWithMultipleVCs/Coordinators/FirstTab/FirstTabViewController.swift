//
//  FirstTabViewController.swift
//  Sample
//
//  Created by Anna Potempa on 30.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    let viewModel: FirstTabViewModelType
    
    init(viewModel: FirstTabViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: FirstTabViewController.xibFilename, bundle: nil)
    }
    
    deinit {
        print("FirstTabViewController deinit")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("It should not happen")
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        viewModel.delegate?.logout()
    }
}

extension FirstTabViewController: InstantiatableFromXib {
    
    static var xibFilename: String {
        return "FirstTab"
    }
}
