//
//  GFItemInfoVC.swift
//  GHFollowers
//
//  Created by olivier geiger on 16/03/2024.
//

import UIKit

class GFItemInfoVC: UIViewController {
    
    let stackView           = UIStackView()
    let itemInfoOne         = GFItemInfoView()
    let itemInfoTwo         = GFItemInfoView()
    let actionButton        = GFButton()
    var itemViews: [UIView] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundView()
        layoutUI()
        configureStackView()
    }
    
    
    func configureBackgroundView() {
        view.layer.cornerRadius = 10
        view.backgroundColor    = .secondarySystemBackground
    }
    
    
    private func configureStackView() {
        stackView.axis          = .horizontal
        stackView.distribution  = .equalSpacing
        stackView.addArrangedSubview(itemInfoOne)
        stackView.addArrangedSubview(itemInfoTwo)
    }
    
    
    private func layoutUI() {
        let itemViews = [stackView, actionButton]
        let padding: CGFloat = 20
        
        for itemView in itemViews {
            view.addSubview(itemView)
        }
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
