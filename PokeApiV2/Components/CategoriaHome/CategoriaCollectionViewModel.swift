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
    
    func configCellView(mainView: UIView) {

        mainView.backgroundColor = menuEscolhido.getBackgroundColor()
        
        mainView.cornerRadiusAndShadow(
            cornerRadius: 12,
            shadowColor: self.menuEscolhido.getShadowCardColor(),
            heightShadowOffset: 4,
            shadowOpacity: 0.8
        )
        
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
    
    func configSelectionMode(view: UIView, isSelected: Bool) {
        view.backgroundColor = isSelected ? UIColor.black : self.menuEscolhido.getBackgroundColor()
    }
}
