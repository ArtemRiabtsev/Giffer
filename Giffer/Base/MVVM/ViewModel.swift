//
//  ViewModel.swift
//  Giffer
//
//  Created by Артем Рябцев on 04.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import UIKit
import RxSwift

public class ViewModel<R: Router>: NSObject {
    
    let router: R
//    let services = Services.shared
    
    #if DEBUG
    deinit {
        debugPrint("✔️ \(self) deinited.")
    }
    #endif
    
    override init() {
        router = R()
        super.init()
    }
    
    func tappedMenuButton() {
        router.comeBack()
    }
}

