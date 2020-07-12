//
//  HomeScreenViewModel.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 23/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import Foundation

class HomeScreenViewModel {
    
    let menuChoice: [EscolhaMenuEnum] = [.Pokedex, .Moves, .Abilites, .Items, .Locations, .TypeCharts]
    let news: [NewsModel] = NewsUtil.createNews()
    
}
