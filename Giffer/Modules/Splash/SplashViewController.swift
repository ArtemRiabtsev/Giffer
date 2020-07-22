//
//  SplashViewController.swift
//  Giffer
//
//  Created by Артем Рябцев on 22.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import GiphyUISDK
import GiphyCoreSDK

final class SplashViewController: ViewController<SplashRouter, SplashViewModel> {
    
    fileprivate let mediaView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func setupConstraints() {
        super.setupConstraints()
        view.addSubview(mediaView)
        mediaView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    override func binding() {
        super.binding()
        
        viewModel
            .logo
            .drive(rx.logo)
            .disposed(by: disposeBag)
        
        viewModel
            .logo
            .delay(.milliseconds(1500))
            .flatMap({ _ in .just(())})
            .drive(viewModel.rx.showMain)
            .disposed(by: disposeBag)
        
    }
    
    override func localize() {
        super.localize()
    }
}

extension Reactive where Base: SplashViewController {
    
    var logo: Binder<UIImage?> {
        return Binder(self.base) {base, image in
            base.mediaView.image = image
            base.mediaView.startAnimating()
        }
    }
}
