//
//  ViewController.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 31.08.2022..
//

import UIKit

class EntryViewController: UIViewController {
    var nameField: UITextField!
    var usernameField: UITextField!
    var passwordField: UITextField!
    var confirmPasswordField: UITextField!
    var submitButton: UIButton!
    
    let vm = EntryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    func setupViewController() {
        // do work
    }
    
    @objc
    func submitButtonPressed(_ sender: UIButton) {
        print("submit button pressed")
    }

}

