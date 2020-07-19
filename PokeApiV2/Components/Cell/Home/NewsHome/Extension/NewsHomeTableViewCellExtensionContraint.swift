//
//  NewsHomeTableViewCellExtensionContraint.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 19/07/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

extension NewsHomeTableViewCell {
    func configConstraint() {
        self.configTitutloConstraint()
        self.configHorarioConstraint()
        self.configImagemNewsContraint()
    }
    
    private func configTitutloConstraint() {
        self.titulo.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.titulo)
        NSLayoutConstraint.activate([
            self.titulo.leftAnchor.constraint(equalTo: self.leftAnchor),
            self.titulo.topAnchor.constraint(equalTo: self.topAnchor, constant: 12)
        ])
    }
    
    private func configHorarioConstraint() {
        self.horario.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.horario)
        NSLayoutConstraint.activate([
            self.horario.leftAnchor.constraint(equalTo: self.titulo.leftAnchor),
            self.horario.topAnchor.constraint(equalTo: self.titulo.bottomAnchor, constant: 6),
            self.horario.rightAnchor.constraint(equalTo: self.titulo.rightAnchor),
            self.horario.bottomAnchor.constraint(lessThanOrEqualTo: self.bottomAnchor, constant: -4)
        ])
    }
    
    private func configImagemNewsContraint() {
        self.imagemNews.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.imagemNews)
        NSLayoutConstraint.activate([
            self.imagemNews.rightAnchor.constraint(equalTo: self.rightAnchor),
            self.imagemNews.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -16),
            self.imagemNews.leftAnchor.constraint(greaterThanOrEqualTo: self.titulo.rightAnchor, constant: 8),
            self.imagemNews.topAnchor.constraint(equalTo: self.topAnchor)
        ])
    }
    
}
