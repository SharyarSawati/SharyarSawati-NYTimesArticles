//
//  UIImageView.swift
//  NYTimesArticles
//
//  Ceated by qurtass group on 17/07/2021.
//  Copyright © 2021 Sharyar Sawati. All rights reserved.
//

import Kingfisher

extension UIImageView {
    func load(withImageUrl urlString: String?) {
        if let urlString = urlString, let url = URL(string: urlString) {
            let imageResource = ImageResource(downloadURL: url)
            self.kf.setImage(with: imageResource, placeholder: nil, options:  [.transition(.fade(0.3))])
        } else {
            self.image = nil
        }
    }
}
