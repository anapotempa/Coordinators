//
//  BaseCoordinator.swift
//  Sample
//
//  Created by Anna Potempa on 29.01.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation
import RxSwift

class BaseCoordinator: Coordinator {
    
    let uuid = UUID()
    
    private var childCoordinators = [UUID: Any]()
    
    func store(coordinator: Coordinator) {
        childCoordinators[coordinator.uuid] = coordinator
    }
    
    func free(coordinator: Coordinator) {
        childCoordinators[coordinator.uuid] = nil
    }
    
}
