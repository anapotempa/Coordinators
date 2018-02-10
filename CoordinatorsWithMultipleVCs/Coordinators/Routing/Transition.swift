//
//  Transition.swift
//  Sample
//
//  Created by Anna Potempa on 02.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

protocol Transition: class {
    weak var viewController: UIViewController? { get set }
    
    func open(_ viewController: UIViewController)
    func close(_ viewController: UIViewController)
}

class PushTransition: Transition {
    weak var viewController: UIViewController?
    
    init(viewController: UINavigationController) {
        self.viewController = viewController
    }
    
    func open(_ viewController: UIViewController) {
        (self.viewController as? UINavigationController)?.pushViewController(viewController, animated: true)
    }
    
    func close(_ viewController: UIViewController) {
        (self.viewController as? UINavigationController)?.popViewController(animated: true)
    }
}

class ModalTransition: Transition {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func open(_ viewController: UIViewController) {
        viewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        viewController.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        
        self.viewController?.present(viewController, animated: true, completion: nil)
    }
    
    func close(_ viewController: UIViewController) {
        self.viewController?.dismiss(animated: true, completion: nil)
    }
}

