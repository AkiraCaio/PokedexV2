//
//  BaseScreenViewController.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 21/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class BaseScreenViewController: UIViewController {

    //MARK: CONFIG DEFAULT
    weak var coordinator: BaseScreenCoordinator?
    var viewModel: BaseScreenViewModel!
    
    //MARK: Content all screen
    lazy var scrollView: UIScrollView = UIScrollView()
    
    //MARK: TOP SCREEN
    lazy var superiorView: UIView = UIView()
    
    lazy var pokebolaImageView: UIImageView = UIImageView()
    
    lazy var mainTitleLabel: UILabel = UILabel()
    
    lazy var searchBar:UISearchBar = UISearchBar()
    
    lazy var selectMenuCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    
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
        
        self.configScreen()
        self.layout()
        
//        self.searchBar.clipsToBounds = true
    }
    
    fileprivate func configScreen() {
        self.viewModel.configScrollView(scrollView: self.scrollView)
        self.viewModel.configSuperiorView(view: self.superiorView)
        self.viewModel.configPokebolaImageView(imageView: self.pokebolaImageView)
        self.viewModel.configMainTitleLabel(label: self.mainTitleLabel)
        self.viewModel.configSearchBar(searchBar: self.searchBar)
    }
    
    
}
