//
//  CategoriaCollectionViewCellExtensionConstraits.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension CategoriaCollectionViewCell {
    func configLayout() {
        
        self.configElipseImageViewConstraint()
        self.configPokebolaImageConstraint()
        self.configTitleConstraits()

    }
    
    fileprivate func configTitleConstraits() {
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant:  16),
            self.titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
    fileprivate func configElipseImageViewConstraint() {
        self.elipseImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.elipseImageView)
        NSLayoutConstraint.activate([
            self.elipseImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 1),
            self.elipseImageView.topAnchor.constraint(equalTo: self.topAnchor, constant:  0),
        ])
    }
    
    fileprivate func configPokebolaImageConstraint() {
        self.pokebolaImage.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.pokebolaImage)
        NSLayoutConstraint.activate([
            self.pokebolaImage.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.pokebolaImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
        
    }
    
    
}
