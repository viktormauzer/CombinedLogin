//
//  LayoutViews.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 01.09.2022..
//

import Foundation
import UIKit

struct LayoutViews {
    static var confirmPasswordIcon: UIImageView?
    
    static var fullScreenScrollView: UIScrollView {
        let scrollView = UIScrollView()
        let screenRect = UIScreen.main.bounds
        scrollView.contentSize = CGSize(width: screenRect.size.width, height: screenRect.size.height)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }
    
    static func backgroundImageView(_ named: String) -> UIImageView {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: named)
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        return backgroundImage
    }
    
    static var logoAsset: UIImageView {
        let view = UIImageView()
        view.image = UIImage(systemName: "person.3.fill")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static func stackView(subviews: [UIView], axis: NSLayoutConstraint.Axis, distribution: UIStackView.Distribution, spacing: CGFloat = 0) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: subviews)
        stackView.axis = axis
        stackView.distribution = distribution
        stackView.spacing = spacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
    
    static func formItemView(leftIcon: String, textField: UITextField, rightIcon: String?) -> UIView {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.shadowColor = UIColor.primary?.cgColor
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 0.1
        view.layer.shadowOffset = CGSize(width: 1, height: 1)
        view.layer.cornerRadius = 12
        
        let leftIconImageView = UIImageView()
        leftIconImageView.image = UIImage(systemName: leftIcon)
        
        let stackView = stackView(subviews: [leftIconImageView, textField], axis: .horizontal, distribution: .fill, spacing: 10)
        
        let rightIconImageView: UIImageView?
        
        if let rightIcon = rightIcon {
            rightIconImageView = UIImageView()
            if let rightIconImageView = rightIconImageView {
                rightIconImageView.image = UIImage(systemName: rightIcon)
                stackView.addArrangedSubview(rightIconImageView)
                confirmPasswordIcon = rightIconImageView
                
                NSLayoutConstraint.activate([
                    rightIconImageView.widthAnchor.constraint(equalToConstant: 30),
                    rightIconImageView.heightAnchor.constraint(equalToConstant: 30)
                ])
            }
        }
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: 60),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            
            leftIconImageView.widthAnchor.constraint(equalToConstant: 30),
            leftIconImageView.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        return view
    }
    
    static func formView(_ nameField: UITextField, _ usernameField: UITextField, _ passwordField: UITextField, _ confirmPasswordField: UITextField, _ submitButton: UIButton) -> UIStackView {
        let nameContainerView = formItemView(leftIcon: "person.fill", textField: nameField, rightIcon: nil)
        let usernameContainerView = formItemView(leftIcon: "person.crop.rectangle.fill", textField: usernameField, rightIcon: nil)
        let passwordContainerView = formItemView(leftIcon: "lock", textField: passwordField, rightIcon: nil)
        let passwordConfirmContainerView = formItemView(leftIcon: "lock.fill", textField: confirmPasswordField, rightIcon: "clear.fill")
        
        return stackView(
            subviews: [nameContainerView, usernameContainerView, passwordContainerView, passwordConfirmContainerView, submitButton],
            axis: .vertical,
            distribution: .fill,
            spacing: 20
        )
    }
    
    static var loadingScreen: UIView {
        let view = UIView()
        view.backgroundColor = .secondarySystemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        activityIndicator.startAnimating()
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(activityIndicator)
        
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        
        return view
    }
}
