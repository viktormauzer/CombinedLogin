//
//  TextFieldViews.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 31.08.2022..
//

import Foundation
import UIKit

struct TextFieldViews {
    static var nameField: UITextField {
        let view = UITextField()
        view.textContentType = .name
        view.placeholder = "Full Name"
        view.font = UIFont.customFont(size: 14)
        view.addDoneButtonOnKeyboard()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static var usernameField: UITextField {
        let view = UITextField()
        view.textContentType = .username
        view.placeholder = "Username"
        view.font = UIFont.customFont(size: 14)
        view.addDoneButtonOnKeyboard()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static var passwordField: UITextField {
        let view = UITextField()
        view.textContentType = .password
        view.placeholder = "Password"
        view.font = UIFont.customFont(size: 14)
        view.addDoneButtonOnKeyboard()
        view.isSecureTextEntry = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
