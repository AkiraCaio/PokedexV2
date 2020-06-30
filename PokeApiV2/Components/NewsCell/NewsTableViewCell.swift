//
//  NewsTableViewCell.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 07/06/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    lazy var titleLabel: UILabel = UILabel()
    lazy var dateLabel: UILabel = UILabel()
    lazy var newsImageView: UIImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.configLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

}

extension NewsTableViewCell {
    
    func configLayout() {
        self.configTitleLabelConstraint()
        self.configTitleLabelConstraint()
        self.configNewsImageViewConstraint()
    }
    
    private func configTitleLabelConstraint() {
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.titleLabel)
        NSLayoutConstraint.activate([
            self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
        ])
    }
    
    private func configdataLabeConstraint() {
        self.dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.dateLabel)
        NSLayoutConstraint.activate([
            self.dateLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
            self.dateLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 8),
            self.dateLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
        ])
    }
    
    private func configNewsImageViewConstraint() {
        self.newsImageView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.newsImageView)
        NSLayoutConstraint.activate([
            self.newsImageView.topAnchor.constraint(equalTo: self.topAnchor),
            self.newsImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 16),
            self.newsImageView.leftAnchor.constraint(equalTo: self.titleLabel.rightAnchor, constant: 44),
            self.newsImageView.rightAnchor.constraint(equalTo: self.rightAnchor),
        ])
    }
}
