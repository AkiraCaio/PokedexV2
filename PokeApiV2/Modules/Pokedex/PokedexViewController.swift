//
//  PokedexViewController.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 19/07/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class PokedexViewController: BaseViewController {

    lazy var collectionView: UICollectionView = {
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

    }
    
    
    fileprivate func initScreen() {
        self.title = L10n.Pokedex.title
    }

}
