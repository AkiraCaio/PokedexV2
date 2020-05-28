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
        
        self.scrollView.backgroundColor = .yellow
        
        self.view.addSubview(self.scrollView)
        NSLayoutConstraint.activate([
            self.scrollView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            self.scrollView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            self.scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
    }
    
    fileprivate func configSuperiorView() {
        self.superiorView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(self.superiorView)
        NSLayoutConstraint.activate([
            self.superiorView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
            self.superiorView.topAnchor.constraint(equalTo: self.view.topAnchor),            
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
        ])
    }
    
    fileprivate func configSearchBar() {
        
        self.searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        self.superiorView.addSubview(self.searchBar)
        NSLayoutConstraint.activate([
            self.searchBar.leftAnchor.constraint(equalTo: self.superiorView.leftAnchor, constant: 20),
            self.searchBar.rightAnchor.constraint(equalTo: self.superiorView.rightAnchor, constant: -26),
            self.searchBar.topAnchor.constraint(equalTo: self.mainTitleLabel.bottomAnchor, constant: 40),
            self.searchBar.bottomAnchor.constraint(equalTo: self.superiorView.bottomAnchor, constant: -26),
        ])
        
    }
    
    fileprivate func configCollectionView() {
        
    }
    
    
}
