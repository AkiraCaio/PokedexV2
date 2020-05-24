//
//  BaseScreenViewControllerExtesionConstraits.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 24/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension BaseScreenViewController {
    func layout() {
        self.configScrollView()
        
        self.configSuperiorView()
        self.configPokebolaImage()
        self.configMainTitle()
        self.configSearchBar()
        self.configCollectionView()
        
    }
    
    fileprivate func configScrollView() {
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(self.scrollView)
        NSLayoutConstraint.activate([
            self.scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
    }
    
    fileprivate func configSuperiorView() {
        self.superiorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(self.superiorView)
        //TODO: PRECISAR FAZER BOTTOM?
        NSLayoutConstraint.activate([
            self.superiorView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            self.superiorView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            
        ])
        
    }
    
    fileprivate func configPokebolaImage() {
        self.pokebolaImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.superiorView.addSubview(self.pokebolaImageView)
        NSLayoutConstraint.activate([
            self.pokebolaImageView.topAnchor.constraint(equalTo: self.superiorView.topAnchor),
            self.pokebolaImageView.rightAnchor.constraint(equalTo: self.superiorView.rightAnchor),
            
        ])
    }
    
    fileprivate func configMainTitle() {
        self.mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.superiorView.addSubview(self.mainTitleLabel)
        NSLayoutConstraint.activate([
            self.mainTitleLabel.leftAnchor.constraint(equalTo: self.superiorView.leftAnchor, constant: 26),
            self.mainTitleLabel.rightAnchor.constraint(equalTo: self.superiorView.rightAnchor, constant: -40),
            self.mainTitleLabel.topAnchor.constraint(equalTo: self.superiorView.topAnchor, constant: 116),

            //TODO: Remover, usado apenas para visualizar com estava a superiorView
            self.mainTitleLabel.bottomAnchor.constraint(equalTo: self.superiorView.bottomAnchor, constant: -32)
        ])
    }
    
    fileprivate func configSearchBar() {
        
    }
    
    fileprivate func configCollectionView() {
        
    }
    
    
}
