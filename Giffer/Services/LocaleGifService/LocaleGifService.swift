//
//  LocaleGifService.swift
//  Giffer
//
//  Created by Артем Рябцев on 22.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import RxSwift

protocol LocaleGifService: Service {
    var getLogo: Single<UIImage?> { get }
}
