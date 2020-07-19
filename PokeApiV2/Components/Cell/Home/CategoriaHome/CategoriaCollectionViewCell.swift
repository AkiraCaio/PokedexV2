//
//  CategoriaCollectionViewCell.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class CategoriaCollectionViewCell: UICollectionViewCell {
    
    lazy var elipseImageView: UIImageView = UIImageView()
    lazy var titleLabel: UILabel = UILabel()
    lazy var pokebolaImage: UIImageView = UIImageView()
    
    var viewModel: CategoriaCollectionViewModel!
        
//    override var isSelected: Bool {
//        didSet  {
//            self.viewModel.configSelectionMode(view: self, isSelected: isSelected)
//        }
//    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
                
        self.configLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bind(viewModel: CategoriaCollectionViewModel) {
        self.viewModel = viewModel
        
        self.viewModel.configCellView(mainView: self)
        self.viewModel.configTitle(label: self.titleLabel)
        self.viewModel.configElipseImageView(imageView: self.elipseImageView)
        self.viewModel.configPokebolaImage(imageView: self.pokebolaImage)
    }
    
}
