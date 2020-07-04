//
//  Router.swift
//  Giffer
//
//  Created by Артем Рябцев on 04.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit

public class Router: NSObject {
    
    // MARK: - Public
    
    weak var viewController: UIViewController?
    
    required override init() {
        super.init()
    }
    
    func comeBack() {
        DispatchQueue.main.async { [weak self] in
            self?.viewController?.navigationController?.popViewController(animated: true)
        }
    }
    
    func setViewControllers(_ viewControllers: [UIViewController]) {
        DispatchQueue.main.async { [weak self] in
            self?.viewController?.navigationController?.setViewControllers(viewControllers, animated: true)
        }
        
    }
    
    func pushView(_ view: UIViewController) {
        DispatchQueue.main.async { [weak self] in
            self?.viewController?.navigationController?.pushViewController(view, animated: true)
        }
    }
    
    func presentView(_ view: UIViewController) {
        DispatchQueue.main.async { [weak self] in
            self?.viewController?.present(view, animated: true, completion: nil)
        }
    }
    
    func showProgress() {
    }
    
    func dismissProgress(completion: Completion? = nil) {
    }
    
    // MARK: - Private
    
    private func hideProgress(completion: @escaping Completion) {
    }
}

