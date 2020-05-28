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
    
    //All controller going here
    var baseController: HomeScreenViewController!
    
    init(navigationController: UINavigationController, defaultContainer: DefaultContainer) {
        self.navigationController = navigationController
        self.defaultContainer = defaultContainer
    }
    
    func start() {
        self.baseController = HomeScreenViewController()
        self.baseController.viewModel = HomeScreenViewModel()
        
        self.navigationController.pushViewController(self.baseController, animated: true)
    }

}
