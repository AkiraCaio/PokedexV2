//
//  NewsUtil.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import Foundation

public class NewsUtil {
    static func createNews() -> [NewsModel] {
        
        var array: [NewsModel] = []
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.locale = Locale(identifier: "en_US_POSIX")
        dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"

        array.append(NewsModel(
            title: "Pokémon Rumble Rush Arrives Soon",
            data: dateFormatterGet.date(from: "2020-05-28 17:32:23")!,
            image: Asset.newsImage1.image)
        )
        
        array.append(NewsModel(
            title: "Detective Pikachu Sleuths into Pokémon GO",
            data: dateFormatterGet.date(from: "2020-05-27 17:32:23")!,
            image: Asset.newsImage2.image)
        )
        
        array.append(NewsModel(
            title: "Mussum Ipsum, cacilds vidis litro abertis. ",
            data: dateFormatterGet.date(from: "2020-05-26 17:32:23")!,
            image: Asset.newsImage1.image)
        )
        
        array.append(NewsModel(
            title: "In elementis mé pra quem é amistosis quis leo.",
            data: dateFormatterGet.date(from: "2020-05-25 17:32:23")!,
            image: Asset.newsImage2.image)
        )
        
        return array
    }
}
