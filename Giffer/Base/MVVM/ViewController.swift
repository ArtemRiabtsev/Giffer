//
//  ViewController.swift
//  Giffer
//
//  Created by Артем Рябцев on 04.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

public class ViewController<R: Router, VM: ViewModel<R>>: UIViewController {
    
    // MARK: - Public
    
    let disposeBag = DisposeBag()
    let viewModel: VM
    
    /// Use this property to change the current preferredFocusedView.
    var currentPreferredFocusedView: UIView?
    
    /// A gesture that determines when the menu button is pressed.
    let menuPressRecognizer = UITapGestureRecognizer()
    
    init(viewModel: VM) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.router.viewController = self
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    #if DEBUG
    deinit {
        debugPrint("✔️ \(self) deinited.")
    }
    #endif
    
    public override var preferredFocusedView: UIView? {
        return currentPreferredFocusedView
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        setupView()
        setupTableView()
        setupCollectionView()
        binding()
        localize()
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let navController = navigationController, navController.isNavigationBarHidden != true {
             navController.setNavigationBarHidden(true, animated: true)
        }
    }
    
    /// Override function to load constraints.
    func setupConstraints() {}
    
    /// Override function to customize views.
    func setupView() {
        menuPressRecognizer.addTarget(self, action: #selector(self.menuButtonAction(recognizer:)))
        menuPressRecognizer.allowedPressTypes = [NSNumber(value: UIPress.PressType.menu.rawValue)]
        self.view.addGestureRecognizer(menuPressRecognizer)
    }
    
    /// Override function to load tableView.
    func setupTableView() {}
    
    /// Override function to load collection view.
    func setupCollectionView() {}
    
    /// Override function to set static localized texts
    func localize() {}
    
    /// Override function to bind ViewController with ViewModels
    func binding() {}
    
    // MARK: - User interaction
    
    /// Override function to customize tapped action of menu button on remote.
    @objc func menuButtonAction(recognizer: UITapGestureRecognizer) {
        self.viewModel.tappedMenuButton()
    }
}

