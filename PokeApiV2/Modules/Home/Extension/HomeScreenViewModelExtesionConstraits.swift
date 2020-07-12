//
//  HomeScreenViewControllerExtesionConstraits.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 24/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension HomeScreenViewController {
    func configLayout() {
        self.configScrollView()
        
        self.configSuperiorView()
        self.configPokebolaImage()
        self.configMainTitle()
        self.configSearchBar()
        self.configCollectionViewConstraint()
        self.configTableViewConstraint()
    }
    
    fileprivate func configScrollView() {
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false
                
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
            self.superiorView.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor),
            self.superiorView.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: -50),
            self.superiorView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor),
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
        ])
        
    }
    
    fileprivate func configCollectionViewConstraint() {
        let heightAdjust = self.view.frame.height / 4
        
        self.selectMenuCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        self.superiorView.addSubview(self.selectMenuCollectionView)
        NSLayoutConstraint.activate([
            self.selectMenuCollectionView.leftAnchor.constraint(equalTo: self.superiorView.leftAnchor, constant: 0),
            self.selectMenuCollectionView.rightAnchor.constraint(equalTo: self.superiorView.rightAnchor, constant: 0),
            self.selectMenuCollectionView.topAnchor.constraint(equalTo: self.searchBar.bottomAnchor, constant: 32),
            self.selectMenuCollectionView.heightAnchor.constraint(equalToConstant: heightAdjust),
            	
            self.selectMenuCollectionView.bottomAnchor.constraint(equalTo: self.superiorView.bottomAnchor, constant: -32),
        ])
    }
    
    fileprivate func configTableViewConstraint() {
        self.bottomTableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.scrollView.addSubview(self.bottomTableView)
        NSLayoutConstraint.activate([
            self.bottomTableView.topAnchor.constraint(equalTo: self.superiorView.bottomAnchor, constant: 32),
            self.bottomTableView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 26),
            self.bottomTableView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -26),
            self.bottomTableView.heightAnchor.constraint(equalToConstant: 300),
            
            self.bottomTableView.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: -32)
            
        ])
    }
    
}
