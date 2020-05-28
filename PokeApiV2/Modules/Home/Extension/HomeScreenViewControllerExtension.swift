//
//  HomeScreenViewControllerExtension.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension HomeScreenViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func configCollectionView() {
        self.selectMenuCollectionView.delegate = self
        self.selectMenuCollectionView.dataSource = self
        self.selectMenuCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.viewModel.menuChoice.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widht = collectionView.frame.width / 2.3
        let height = collectionView.frame.width / 6.3
        
        return CGSize(width: widht, height: height)
    }
    
    //TODO: HERE
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        
        return cell
    }
    
}
