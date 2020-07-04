//
//  CollectionViewCell.swift
//  Giffer
//
//  Created by Артем Рябцев on 04.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import RxSwift
import RxCocoa

public class CollectionViewCell: UICollectionViewCell {
    
    lazy var disposeBag = DisposeBag()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
        binding()
        localize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {}
    func setupConstraints() {}
    func binding() {}
    func localize() {}
}
