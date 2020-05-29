//
//  HomeScreenViewControllerExtension.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension HomeScreenViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    func configDelegateAndRegisterCells() {
        self.selectMenuCollectionView.delegate = self
        self.selectMenuCollectionView.dataSource = self
        self.selectMenuCollectionView.register(CategoriaCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        self.bottomTableView.delegate = self
        self.bottomTableView.dataSource = self
        self.bottomTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    //MARK: CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.viewModel.menuChoice.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widht = collectionView.frame.width / 2.4
        let height = collectionView.frame.height / 4
        
        return CGSize(width: widht, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoriaCollectionViewCell
        
        let viewModel = CategoriaCollectionViewModel(menuEscolhido: self.viewModel.menuChoice[indexPath.row])
        cell.bind(viewModel: viewModel)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard lastSelectedIndexPathCollectionView != indexPath else {
            return
        }
        
        if lastSelectedIndexPathCollectionView != nil {
            collectionView.deselectItem(at: lastSelectedIndexPathCollectionView!, animated: false)
        }
        
        print("Selected:\(indexPath) - \(self.viewModel.menuChoice[indexPath.row].getTitle())")
        let selectedCell = collectionView.cellForItem(at: indexPath) as! CategoriaCollectionViewCell
        selectedCell.isSelected = true
        lastSelectedIndexPathCollectionView = indexPath
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 26, bottom: 8, right: 26)
    }
    
    //MARK: TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
}
