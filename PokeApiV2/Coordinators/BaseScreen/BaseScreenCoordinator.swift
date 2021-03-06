//
//  BaseScreenCoordinator.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 21/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class BaseScreenCoordinator: NSObject, Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var chieldCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var defaultContainer: DefaultContainer
    
    //root controller
    var baseController: HomeScreenViewController!
    
    //chield Controller
    var pokedexController: PokedexViewController!
    
    init(navigationController: UINavigationController, defaultContainer: DefaultContainer) {
        self.navigationController = navigationController
        self.defaultContainer = defaultContainer
    }
    
    func start() {
        self.baseController = HomeScreenViewController()
        self.baseController.viewModel = HomeScreenViewModel()
        self.baseController.coordinator = self
        
        self.navigationController.pushViewController(self.baseController, animated: true)
    }
    
    //MARK: Show
    func showPokedex() {
        pokedexController = PokedexViewController()
        
        self.navigationController.pushViewController(pokedexController, animated: true)
    }

}
