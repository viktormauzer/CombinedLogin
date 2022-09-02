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
        
        let backgroundImage = LayoutViews.backgroundImageView("loginBackground")
        let logoImageView = LayoutViews.logoAsset
        let scrollView = LayoutViews.fullScreenScrollView
        
        nameField = TextFieldViews.nameField
        usernameField = TextFieldViews.usernameField
        passwordField = TextFieldViews.passwordField
        
        confirmPasswordField = TextFieldViews.passwordField
        confirmPasswordField.placeholder = "Confirm password"
        
        submitButton = ButtonViews.primaryButton(title: "Register")
        submitButton.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        
        let formView = LayoutViews.formView(nameField, usernameField, passwordField, confirmPasswordField, submitButton)
        
        view.addSubview(backgroundImage)
        view.addSubview(scrollView)
        scrollView.addSubview(formView)
        scrollView.addSubview(logoImageView)
        
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            formView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            formView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            formView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.8),
            
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 200),
            logoImageView.bottomAnchor.constraint(equalTo: formView.topAnchor, constant: -20),
            logoImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
    }
}
