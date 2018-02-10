//
//  PresentationCell.swift
//  Sample
//
//  Created by Anna Potempa on 05.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PresentationCell: UITableViewCell {
    
    @IBOutlet private weak var titleLabel: UILabel!
    private let tapRecognizer = UITapGestureRecognizer()
    private let viewModelDisposeBag = DisposeBag()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        addGestureRecognizer(tapRecognizer)
    }
    
    func configure(withViewModel viewModel: PresentationCellViewModel) {
        titleLabel.text = viewModel.title
        
        tapRecognizer.rx
            .event
            .subscribe(onNext: { _ in
                viewModel.showDetails.onNext(viewModel.title)
            })
            .disposed(by: viewModelDisposeBag)
    }
    
}

extension PresentationCell: ReusableCell {
    static var xibFilename: String {
        return "PresentationCell"
    }
    
}
