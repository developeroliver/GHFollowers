//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by olivier geiger on 16/03/2024.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Obtenir des Followers")
    }
    
    override func actionButtonTapped() {
        guard user.followers != 0 else {
            presentGFAlertOnMainThread(title: "Pas de followers", message: "Cet utilisateur n'a pas de followers. Quelle honte 😔.", buttonTitle: "Si Triste")
            return
        }
        delegate.didTapGetFollowers(for: user)
    }
}
