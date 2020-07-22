//
//  LocaleGifServiceImpl.swift
//  Giffer
//
//  Created by Артем Рябцев on 22.07.2020.
//  Copyright © 2020 Артем Рябцев. All rights reserved.
//

import RxSwift

final class LocaleGifServiceImpl: LocaleGifService {
        
    var getLogo: Single<UIImage?> {
        
        guard let path = Bundle.main.url(forResource: "MyappGIF-downsized_large", withExtension: "gif") else {
            return .just(nil)
        }
        
        return .just(UIImage.gifImageWithURL(path))
    }
}
