//
//  PresentationListViewController.swift
//  Sample
//
//  Created by Anna Potempa on 05.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit

class PresentationListViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!
    
    private let viewModel: PresentationListViewModelType
    
    init(viewModel: PresentationListViewModelType) {
        self.viewModel = viewModel
        super.init(nibName: PresentationListViewController.xibFilename, bundle: nil)
        
    }
    
    deinit {
        print("PresentationListViewController deinit")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("It should not happen")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.registerCells([PresentationCell.self])
    }
    
}

extension PresentationListViewController: InstantiatableFromXib {
    
    static var xibFilename: String {
        return "PresentationList"
    }
}

extension PresentationListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.sectionViewModels.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.sectionViewModels[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PresentationCell.xibFilename) as? PresentationCell else {
            return UITableViewCell()
        }
        
        cell.configure(withViewModel: viewModel.sectionViewModels[indexPath.section][indexPath.row])
        
        return cell
    }
}
