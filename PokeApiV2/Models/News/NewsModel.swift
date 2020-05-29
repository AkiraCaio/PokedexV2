//
//  NewsModel.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

struct NewsModel {
    var title: String
    var data: Date
    var image: UIImage
    
    init(title: String, data: Date, image: UIImage) {
        self.title = title
        self.data = data
        self.image = image
    }
    
}
