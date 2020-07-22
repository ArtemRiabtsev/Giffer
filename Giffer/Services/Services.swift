//
//  Services.swift
//  Giffer
//
//  Created by Артем Рябцев on 22.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import Foundation

final class Services {
    static let shared = Services()
    private init() {}
    
    lazy var localeGifService: LocaleGifService = LocaleGifServiceImpl()
}
