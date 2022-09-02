//
//  ViewController.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 31.08.2022..
//

import UIKit
import Combine

class EntryViewController: UIViewController {
    var nameField: UITextField!
    var usernameField: UITextField!
    var passwordField: UITextField!
    var confirmPasswordField: UITextField!
    var submitButton: UIButton!
    
    private var subscribers: [AnyCancellable] = []
    
    let vm = EntryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    func setupViewController() {
        
        nameField.textPublisher
            .sink { [weak self] name in
                self?.vm.name = name
            }
            .store(in: &subscribers)
        
        usernameField.textPublisher
            .sink { [weak self] username in
                self?.vm.username = username
            }
            .store(in: &subscribers)
        
        passwordField.textPublisher
            .sink { [weak self] password in
                self?.vm.password = password
            }
            .store(in: &subscribers)
        
        confirmPasswordField.textPublisher
            .sink { [weak self] confirmPassword in
                self?.vm.confirmPassword = confirmPassword
            }
            .store(in: &subscribers)
        
        vm.isFormValid
            .sink { [weak self] isValid in
                self?.submitButton.isEnabled = isValid
                if !isValid {
                    self?.submitButton.setTitleColor(.systemGray4, for: .normal)
                    LayoutViews.confirmPasswordIcon?.image = UIImage(systemName: "clear.fill")
                } else {
                    self?.submitButton.setTitleColor(.black, for: .normal)
                    LayoutViews.confirmPasswordIcon?.image = UIImage(systemName: "checkmark.square.fill")
                }
            }
            .store(in: &subscribers)
        
        vm.$isLoading
            .sink { [weak self] isLoading in
                if isLoading {
                    self?.submitButton.setTitle("Loading", for: .normal)
                } else {
                    self?.submitButton.setTitle("Register", for: .normal)
                }
            }
            .store(in: &subscribers)
    }
    
    @objc
    func submitButtonPressed(_ sender: UIButton) {
        vm.registerUser()
    }

}

