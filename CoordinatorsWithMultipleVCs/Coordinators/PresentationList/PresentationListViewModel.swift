//
//  PresentationListViewModel.swift
//  Sample
//
//  Created by Anna Potempa on 05.02.2018.
//  Copyright © 2018 com.Anna Potempa. All rights reserved.
//

import Foundation
import RxSwift

class PresentationListViewModel: PresentationListViewModelType {
    
    weak var delegate: PresentationListViewModelDelegate?
    let sectionViewModels: [[PresentationCellViewModel]]
    let showDetails: PublishSubject<String> = PublishSubject<String>()
    
    private let disposeBag = DisposeBag()
    
    init(delegate: PresentationListViewModelDelegate) {
        self.delegate = delegate
        sectionViewModels = [[PresentationCellViewModel(title: "Section 1 Row 1", action: showDetails),
                              PresentationCellViewModel(title: "Section 1 Row 2", action: showDetails),
                              PresentationCellViewModel(title: "Section 1 Row 3", action: showDetails),],
                             [PresentationCellViewModel(title: "Section 2 Row 1", action: showDetails),
                              PresentationCellViewModel(title: "Section 2 Row 2", action: showDetails),
                              PresentationCellViewModel(title: "Section 2 Row 3", action: showDetails),]]
        
        showDetails
            .subscribe(onNext: { [weak self] title in
                self?.delegate?.showDetails(title)
            })
            .disposed(by: disposeBag)
    }
    
    deinit {
        print("PresentationListViewModel deinit")
    }
}
