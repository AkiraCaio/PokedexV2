//
//  CategoriaCollectionViewModel.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class CategoriaCollectionViewModel {
    var menuEscolhido: EscolhaMenuEnum!

    init(menuEscolhido: EscolhaMenuEnum) {
        self.menuEscolhido = menuEscolhido
    }
    
    func configCellView(view: UIView) {
        view.backgroundColor = menuEscolhido.getBackgroundColor()
        
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1.0

        view.layer.borderColor = UIColor.clear.cgColor
        view.layer.masksToBounds = true

        view.layer.shadowColor = self.menuEscolhido.getShadowCardColor()
        view.layer.shadowOffset = CGSize(width: 0, height: 5)
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.6
        view.layer.masksToBounds = false
        view.layer.shadowPath = UIBezierPath(
            roundedRect:view.bounds,
            cornerRadius:view.layer.cornerRadius
        ).cgPath
    }
    
    func configTitle(label: UILabel) {
        label.textColor = .white
        label.text = menuEscolhido.getTitle()
        label.font = UIFont(font: FontFamily.CircularStd.bold, size: 14)
        label.textAlignment = .center
    }
    
    func configElipseImageView(imageView: UIImageView) {
        if (self.menuEscolhido.hasElipseOnCard()) {
            imageView.image = Asset.ellipse.image
            imageView.tintColor = self.menuEscolhido.getElipseBackgroundColor()
        }
    }
    
    func configPokebolaImage(imageView: UIImageView) {
        imageView.image = Asset.pokebolaCard.image
        imageView.tintColor = UIColor.white
        
        imageView.alpha = 0.4
    }
}
