//
//  Ext+LoadEntryVC.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 01.09.2022..
//

import UIKit

extension EntryViewController {
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
        
        nameField = TextFieldViews.nameField
        usernameField = TextFieldViews.usernameField
        passwordField = TextFieldViews.passwordField
        
        confirmPasswordField = TextFieldViews.passwordField
        confirmPasswordField.placeholder = "Confirm password"
        
        submitButton = ButtonViews.primaryButton(title: "Register")
        submitButton.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        
        let verticalStackView = LayoutViews.stackView(
            subviews: [nameField, usernameField, passwordField, confirmPasswordField, submitButton],
            axis: .vertical,
            distribution: .fill,
            spacing: 15
        )
        
        view.addSubview(verticalStackView)
        
        NSLayoutConstraint.activate([
            verticalStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            verticalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            verticalStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
    }
}
