//
//  FavoritesVC.swift
//  GHFollowers
//
//  Created by olivier geiger on 14/03/2024.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        title = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        PersistenceManager.retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                print(error)
            }
        }
        
        
        
    }
}


