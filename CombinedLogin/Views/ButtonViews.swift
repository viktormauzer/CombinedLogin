//
//  ButtonViews.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 01.09.2022..
//

import Foundation
import UIKit

struct ButtonViews {
    static func primaryButton(title: String) -> UIButton {
        let view = UIButton()
        view.titleLabel?.font = UIFont.customFont(size: 20)
        view.setTitle(title, for: .normal)
        view.setTitleColor(.primary, for: .normal)
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 12
        view.layer.shadowColor = UIColor.primary?.cgColor
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.1
        view.layer.shadowOffset = CGSize(width: 1, height: 1)
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 60).isActive = true
        return view
    }
}
