//
//  UITableView+RegisterCell.swift
//  Sample
//
//  Created by Anna Potempa on 06.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

extension UITableView {
    
    func registerCell(_ cellType: ReusableCell.Type) {
        let bundle = Bundle(for: cellType)
        let nib = UINib(nibName: cellType.xibFilename, bundle: bundle)
        register(nib, forCellReuseIdentifier: cellType.xibFilename)
    }
    
    func registerCells(_ cellTypes: [ReusableCell.Type]) {
        for cellType in cellTypes {
            registerCell(cellType)
        }
    }
    
}
