//
//  EscolhaMenuEnum.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

enum EscolhaMenuEnum {
    case Pokedex
    case Moves
    case Abilites
    case Items
    case Locations
    case TypeCharts
    
    func hasElipseOnCard() -> Bool {
        switch self {
            case .Items:
                return false
            default:
                return true
        }
    }
    
    func getTitle() -> String {
        switch self {
            case .Pokedex:
                return L10n.BaseScreen.Categoria.Titulo.pokedex
            case .Moves:
                return L10n.BaseScreen.Categoria.Titulo.moves
            case .Abilites:
                return L10n.BaseScreen.Categoria.Titulo.abilities
            case .Items:
                return L10n.BaseScreen.Categoria.Titulo.items
            case .Locations:
                return L10n.BaseScreen.Categoria.Titulo.locations
            case .TypeCharts:
                return L10n.BaseScreen.Categoria.Titulo.typeCharts
        }
    }
    
    func getBackgroundColor() -> UIColor {
        switch self {
            case .Pokedex:
                return ColorName.baseScreenCategoriasBackgroundColorPokedex.color
            case .Moves:
                return ColorName.baseScreenCategoriasBackgroundColorMoves.color
            case .Abilites:
                return ColorName.baseScreenCategoriasBackgroundColorAbilities.color
            case .Items:
                return ColorName.baseScreenCategoriasBackgroundColorItems.color
            case .Locations:
                return ColorName.baseScreenCategoriasBackgroundColorLocations.color
            case .TypeCharts:
                return ColorName.baseScreenCategoriasBackgroundColorTypeCharts.color
        }
    }
    
    func getElipseBackgroundColor() -> UIColor {
        switch self {
            case .Pokedex:
                return ColorName.baseScreenCategoriasElipseBackgroundColorPokedex.color
            case .Moves:
                return ColorName.baseScreenCategoriasElipseBackgroundColorMoves.color
            case .Abilites:
                return ColorName.baseScreenCategoriasElipseBackgroundColorAbilities.color
            case .Items:
                return UIColor.white
            case .Locations:
                return ColorName.baseScreenCategoriasElipseBackgroundColorLocations.color
            case .TypeCharts:
                return ColorName.baseScreenCategoriasElipseBackgroundColorTypeCharts.color
        }
    }
    
    
    
}
