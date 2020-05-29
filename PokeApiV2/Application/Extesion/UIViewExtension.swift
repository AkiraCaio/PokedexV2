//
//  UIViewExtension.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension UIView {
    func cornerRadiusAndShadow(cornerRadius: CGFloat, shadowColor: CGColor, heightShadowOffset: CGFloat, shadowRadius: CGFloat = 3, shadowOpacity: Float) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.layer.shadowColor = shadowColor
        self.layer.shadowOffset = CGSize(width: 0, height: heightShadowOffset)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
        self.layer.masksToBounds = false
    }
}
