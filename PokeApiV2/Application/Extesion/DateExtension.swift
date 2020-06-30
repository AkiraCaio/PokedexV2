//
//  DateExtension.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 07/06/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension Date {
    func toString() -> String {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "dd"
        let dia = dateFormatter.string(from: self)

        dateFormatter.dateFormat = "MMMM"
        let mes = dateFormatter.string(from: self)
        
        dateFormatter.dateFormat = "yyyy"
        let ano = dateFormatter.string(from: self)
        
        return "\(dia) \(mes) \(ano)"
    }
    
}
