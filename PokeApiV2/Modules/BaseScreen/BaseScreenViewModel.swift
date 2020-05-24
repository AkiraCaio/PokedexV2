//
//  BaseScreenViewModel.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 23/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class BaseScreenViewModel {
    
    func configScrollView(scrollView: UIScrollView) {
        scrollView.backgroundColor = ColorName.baseScreenMainBackgroundColor.color
    }
    
    func configSuperiorView(view: UIView) {
        view.backgroundColor = .white
    }
    
    func configPokebolaImageView(imageView: UIImageView) {
        imageView.image = Asset.pokebolaTopMain.image
    }
    
    func configMainTitleLabel(label: UILabel) {
        label.text = L10n.BaseScreen.Title.firstSection
        label.font = UIFont(font: FontFamily.CircularStd.black, size: 30)
        label.numberOfLines = 0
        label.textAlignment = .justified
    }
    
    func configSearchBar(searchBar: UISearchBar) {
        searchBar.searchBarStyle = UISearchBar.Style.prominent
        searchBar.placeholder = L10n.BaseScreen.SearchBar.placeholder
        searchBar.backgroundImage = UIImage()
        searchBar.setImage(Asset.buscarIcon.image, for: .search, state: .normal)
        searchBar.isTranslucent = false
    }
}
