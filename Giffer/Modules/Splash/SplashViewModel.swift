//
//  SplashViewModel.swift
//  Giffer
//
//  Created by Артем Рябцев on 22.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import RxSwift
import RxCocoa

final class SplashViewModel: ViewModel<SplashRouter> {
    
    var logo: Driver<UIImage?> {
        return services
            .localeGifService
            .getLogo
            .asDriver(onErrorJustReturn: nil)
    }
}

extension Reactive where Base: SplashViewModel {
    var showMain: Binder<()> {
        return Binder(self.base) {base, _ in
            base.router.routeToMain()
        }
    }
}
