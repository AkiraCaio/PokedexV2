//
//  HomeScreenViewControllerExtension.swift
//  PokeApiV2
//
//  Created by Caio Pinho on 28/05/20.
//  Copyright © 2020 Caio Pinho. All rights reserved.
//

import UIKit

//MARK: CollectionView
extension HomeScreenViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.viewModel.menuChoice.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let widht = collectionView.frame.width / 2.4
        let height = collectionView.frame.height / 4
        
        return CGSize(width: widht, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CategoriaCollectionViewCell
        
        let viewModel = CategoriaCollectionViewModel(menuEscolhido: self.viewModel.menuChoice[indexPath.row])
        cell.bind(viewModel: viewModel)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        guard lastSelectedIndexPathCollectionView != indexPath else {
//            return
//        }
//
//        if lastSelectedIndexPathCollectionView != nil {
//            collectionView.deselectItem(at: lastSelectedIndexPathCollectionView!, animated: false)
//        }
//
//        print("Selected:\(indexPath) - \(self.viewModel.menuChoice[indexPath.row].getTitle())")
//        let selectedCell = collectionView.cellForItem(at: indexPath) as! CategoriaCollectionViewCell
//        selectedCell.isSelected = true
//        lastSelectedIndexPathCollectionView = indexPath
//
        if (self.viewModel.menuChoice[indexPath.row] == EscolhaMenuEnum.Pokedex) {
            self.coordinator?.showPokedex()
        }
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 26, bottom: 8, right: 26)
    }
}
    
    
//MARK: TableView
extension HomeScreenViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let info = self.viewModel.news[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewsHomeTableViewCell
        
        cell.bind(titulo: info.title, horario: info.data.toString(), image: info.image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 32
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: .zero)
        
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = L10n.BaseScreen.Title.secoundSection
        label.font = FontFamily.CircularStd.black.font(size: 20)
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: view.leftAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor)
        ])
        
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(ColorName.linkColor.color, for: .normal)
        button.setTitle(L10n.BaseScreen.Title.viewAll, for: .normal)
        button.titleLabel?.font = FontFamily.CircularStd.medium.font(size: 14)
        button.addTarget(self, action: #selector(HomeScreenViewController.viewAll), for: .touchUpInside)
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.rightAnchor.constraint(equalTo: view.rightAnchor),
            button.topAnchor.constraint(equalTo: view.topAnchor),
            button.leftAnchor.constraint(greaterThanOrEqualTo: label.rightAnchor, constant: 16)
        ])
        
        return view
    }
   
}


