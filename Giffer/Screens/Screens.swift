//
//  Screens.swift
//  Giffer
//
//  Created by Артем Рябцев on 22.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit

struct Screens {
//    static let giphy =
    static func splash() -> UIViewController {
        let vm = SplashViewModel()
        return SplashViewController(viewModel: vm)
    }
}
