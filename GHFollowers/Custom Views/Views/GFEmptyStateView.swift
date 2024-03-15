//
//  GFEmptyStateView.swift
//  GHFollowers
//
//  Created by olivier geiger on 15/03/2024.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel    = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let logoImageView   = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureMessageLabel()
        configureLogoImageView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configureMessageLabel()
        configureLogoImageView()
    }
    
    
    private func configureMessageLabel() {
        addSubview(messageLabel)
        
        messageLabel.numberOfLines = 3
        messageLabel.textColor     = .secondaryLabel
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -150),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    private func configureLogoImageView() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.image = UIImage(named: "empty-state-logo")
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.5),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.5),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 220),
            logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 100)
            
        ])
    }
}
