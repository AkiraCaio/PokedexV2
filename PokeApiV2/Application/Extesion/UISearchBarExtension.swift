//
//  UISearchBarExtension.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension UISearchBar {
    func placeholderFontAndColor(font: UIFont, textColor: UIColor) {
        if #available(iOS 13.0, *) {
            self.searchTextField.font = font
            self.searchTextField.textColor = textColor
        } else {
            for view in (self.subviews[0]).subviews {
                if let textField = view as? UITextField {
                    textField.font = font
                    textField.textColor = textColor
                    break
                }
            }
            
        }
    }
    
    func searchTextFieldCornerRadius(cornerRadius: CGFloat) {
        if #available(iOS 13.0, *) {
            self.searchTextField.layer.cornerRadius = cornerRadius
            self.searchTextField.clipsToBounds = true
        } else {
            for view in (self.subviews[0]).subviews {
                if let textField = view as? UITextField {
                    textField.layer.cornerRadius = cornerRadius
                    textField.clipsToBounds = true
                    break
                }
            }
        }
    }
}
