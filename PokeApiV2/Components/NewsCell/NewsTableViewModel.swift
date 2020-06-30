//
//  NewsTableViewModel.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 07/06/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class NewsTableViewModel: NSObject {
    
    var new: NewsModel?
    
    func configTitleLabel(label: UILabel) {
        guard let new = self.new else { return }
        self.configLabel(label)
        label.text = new.title
    }
    
    func configeLabel(label: UILabel) {
        guard let new = self.new else { return }
        self.configLabel(label)
        label.alpha = 0.6
//        label.text = new.data.
    }
    
    fileprivate func configLabel(_ label: UILabel) {
        label.textColor = ColorName.baseScreenMainTextColor.color
        label.font = UIFont(font: FontFamily.CircularStd.bold, size: 14)
        label.textAlignment = .center
    }
}
