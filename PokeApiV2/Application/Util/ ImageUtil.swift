//
//   ImageUtil.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 24/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class ImageUtil {
    static func getImageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
