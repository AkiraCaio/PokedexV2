//
//  HomeScreenViewModel.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 23/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class HomeScreenViewModel {
    
    let menuChoice: [EscolhaMenuEnum] = [.Pokedex, .Moves, .Abilites, .Items, .Locations, .TypeCharts]
    
    func configScrollView(scrollView: UIScrollView) {
        scrollView.backgroundColor = ColorName.baseScreenMainBackgroundColor.color
    }
    
    func configSuperiorView(view: UIView) {
        view.backgroundColor = .white
        
        view.layer.cornerRadius = 30
        view.clipsToBounds = true
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    func configPokebolaImageView(imageView: UIImageView) {
        imageView.image = Asset.pokebolaTopMain.image
    }
    
    func configMainTitleLabel(label: UILabel) {
        label.text = L10n.BaseScreen.Title.firstSection
        label.font = UIFont(font: FontFamily.CircularStd.black, size: 30)
        label.textColor = ColorName.baseScreenMainTextColor.color
        label.numberOfLines = 0
        label.textAlignment = .justified
    }
    
    func configSearchBar(searchBar: UISearchBar) {
        let searchTextFieldHeight: CGFloat = 45
        
        searchBar.searchBarStyle = UISearchBar.Style.prominent
        searchBar.placeholder = L10n.BaseScreen.SearchBar.placeholder
        
        searchBar.placeholderFontAndColor(
            font: UIFont(font: FontFamily.CircularStd.book, size: 14),
            textColor: ColorName.baseScreenMainTextColor.color.withAlphaComponent(0.4)
        )

        searchBar.backgroundImage = UIImage()
        
        searchBar.setImage(Asset.buscarIcon.image, for: .search, state: .normal)
        searchBar.searchTextPositionAdjustment = UIOffset(horizontal: 12, vertical: 0)
        searchBar.setPositionAdjustment(UIOffset(horizontal: 18, vertical: 0), for: UISearchBar.Icon.search)
                
//        Logica para aumentar o tamanho do searchTextField, precisa primeiro aumentar o tamanho para depois arredondar os cantos
        let image = ImageUtil.getImageWithColor (
            color: ColorName.baseScreenMainBackgroundColor.color,
            size: CGSize (
                width: 1,
                height: searchTextFieldHeight
            )
        )
        searchBar.setSearchFieldBackgroundImage(image, for: .normal)
        
        searchBar.searchTextFieldCornerRadius(cornerRadius: searchTextFieldHeight/2)
    }
    
    func configCollectionView(collectionView: UICollectionView) {
        collectionView.backgroundColor = .clear
        
    }
    
}
