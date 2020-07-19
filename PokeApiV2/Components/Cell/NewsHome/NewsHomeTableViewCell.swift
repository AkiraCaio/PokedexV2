//
//  NewsHomeTableViewCell.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 12/07/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class NewsHomeTableViewCell: UITableViewCell {

    lazy var titulo: UILabel = {
        let label = UILabel()
        
        label.text = "Pokémon Rumble Rush Arrives Soon"
        label.font = FontFamily.CircularStd.bold.font(size: 14)
        label.textColor = ColorName.baseScreenMainTextColor.color
        
        return label
    }()
    
    lazy var horario: UILabel = {
        let label = UILabel()
        
        label.text = "15 may 2019"
        label.font = FontFamily.CircularStd.book.font(size: 10)
        label.textColor = ColorName.baseScreenMainTextColor.color.withAlphaComponent(0.6)
        
        return label
    }()
    
    lazy var imagemNews: UIImageView = {
        let image = UIImageView()
        
        image.image = Asset.newsImage1.image
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.initScreen()
        self.configConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //TODO
    func bind() {
        
    }
    
    private func initScreen() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
    }
}
