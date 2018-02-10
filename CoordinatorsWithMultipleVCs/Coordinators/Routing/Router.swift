//
//  Router.swift
//  Sample
//
//  Created by Anna Potempa on 02.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

protocol Closable: class {
    func close()
}

protocol Openable: class {
    
    func open(_ viewController: UIViewController, transition: Transition)
}

class Router: Openable, Closable {
    
    private weak var viewController: UIViewController?
    var openTransition: Transition
    
    init(viewController: UIViewController, transition: Transition) {
        self.viewController = viewController
        self.openTransition = transition
    }
    
    func open(_ viewController: UIViewController, transition: Transition) {
        transition.viewController = viewController
        transition.open(viewController)
    }
    
    func close() {
        guard let viewController = viewController else { return }
        
        openTransition.close(viewController)
    }
    
    
}
