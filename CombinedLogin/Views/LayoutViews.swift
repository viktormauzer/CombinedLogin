//
//  LayoutViews.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 01.09.2022..
//

import Foundation
import UIKit

struct LayoutViews {
    static func stackView(subviews: [UIView], axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution, spacing: CGFloat = 0) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: subviews)
        stackView.axis = axis
        stackView.distribution = distribution
        stackView.spacing = spacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}
