//
//  TextField.swift
//  Giffer
//
//  Created by Артем Рябцев on 04.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit

public class TextField: UITextField {
    
    var padding: UIEdgeInsets = UIEdgeInsets(top: 0, left: 100, bottom: 0, right: 16)

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
    
    // MARK: Override
    
    override public func textRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }

    override public func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }

    override public func editingRect(forBounds bounds: CGRect) -> CGRect {
        bounds.inset(by: padding)
    }
}
