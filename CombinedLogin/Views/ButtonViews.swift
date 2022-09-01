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
        view.setTitle(title, for: .normal)
        view.setTitleColor(.black, for: .normal)
        view.backgroundColor = .systemBackground
        view.layer.cornerRadius = 6
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
