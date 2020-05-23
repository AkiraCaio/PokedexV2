//
//  Coordinator.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 22/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var chieldCoordinators: [Coordinator] {get set }
    var navigationController: UINavigationController { get set }
    var defaultContainer: DefaultContainer { get set }
    
    func start()
    func childDidFinish(_ child: Coordinator?)
}

extension Coordinator {
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in chieldCoordinators.enumerated() where coordinator === child {
            chieldCoordinators.remove(at: index)
            break
        }
    }
}

