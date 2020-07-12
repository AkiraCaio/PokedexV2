//
//  HomeScreenViewController.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 21/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class HomeScreenViewController: BaseViewController	 {
    var lastSelectedIndexPathCollectionView:IndexPath?

    //MARK: CONFIG DEFAULT
    weak var coordinator: BaseScreenCoordinator?
    var viewModel: HomeScreenViewModel!
    
    //MARK: Content all screen
    lazy var scrollView: UIScrollView = UIScrollView()
    
    //MARK: TOP SCREEN
    lazy var superiorView: UIView = UIView()
    
    lazy var pokebolaImageView: UIImageView = UIImageView()
    
    lazy var mainTitleLabel: UILabel = UILabel()
    
    lazy var searchBar:UISearchBar = UISearchBar()
    
    lazy var selectMenuCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        return collectionView
    }()
    
    //MARK: Bottom Screen
    lazy var bottomTableView: UITableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.startScreen()
        self.configLayout()
    
    }
    
    fileprivate func startScreen() {
        self.configDelegateAndRegisterCells()
        self.startScrollView()
        self.startSuperiorView()
        self.startPokebolaImageView()
        self.startMainTitleLabel()
        self.startSearchBar()
        self.startCollectionView()
        self.startTableView()
    }
    
    fileprivate func startScrollView() {
        scrollView.backgroundColor = ColorName.baseScreenMainBackgroundColor.color
    }
    
    fileprivate func startSuperiorView() {
        self.superiorView.backgroundColor = .white
        
        self.superiorView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        self.superiorView.cornerRadiusAndShadow(
            cornerRadius: 30,
            shadowColor: UIColor.gray.cgColor,
            heightShadowOffset: 2,
            shadowOpacity: 0.3
        )
    }
    
    fileprivate func startPokebolaImageView() {
        self.pokebolaImageView.image = Asset.pokebolaTopMain.image
    }
    
    fileprivate func startMainTitleLabel() {
        self.mainTitleLabel.text = L10n.BaseScreen.Title.firstSection
        self.mainTitleLabel.font = UIFont(font: FontFamily.CircularStd.black, size: 30)
        self.mainTitleLabel.textColor = ColorName.baseScreenMainTextColor.color
        self.mainTitleLabel.numberOfLines = 0
        self.mainTitleLabel.textAlignment = .justified
    }
    
    fileprivate func startSearchBar() {
        let searchTextFieldHeight: CGFloat = 45
        
        self.searchBar.searchBarStyle = UISearchBar.Style.prominent
        self.searchBar.placeholder = L10n.BaseScreen.SearchBar.placeholder
        
        self.searchBar.placeholderFontAndColor(
            font: UIFont(font: FontFamily.CircularStd.book, size: 14),
            textColor: ColorName.baseScreenMainTextColor.color.withAlphaComponent(0.4)
        )
        
        self.searchBar.backgroundImage = UIImage()
        
        self.searchBar.setImage(Asset.buscarIcon.image, for: .search, state: .normal)
        self.searchBar.searchTextPositionAdjustment = UIOffset(horizontal: 12, vertical: 0)
        self.searchBar.setPositionAdjustment(UIOffset(horizontal: 18, vertical: 0), for: UISearchBar.Icon.search)
        
        // Logica para aumentar o tamanho do searchTextField, precisa primeiro aumentar o tamanho para depois arredondar os cantos
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
    
    fileprivate func startCollectionView() {
        self.selectMenuCollectionView.backgroundColor = .clear
    }
    
    fileprivate func startTableView() {
        self.bottomTableView.backgroundColor = .clear
        self.bottomTableView.isScrollEnabled = false
    }
    
    fileprivate func configDelegateAndRegisterCells() {
          self.selectMenuCollectionView.delegate = self
          self.selectMenuCollectionView.dataSource = self
          self.selectMenuCollectionView.register(CategoriaCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
          
          self.bottomTableView.delegate = self
          self.bottomTableView.dataSource = self
          self.bottomTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
      }
}
