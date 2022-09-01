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
        view.borderStyle = .roundedRect
        view.textContentType = .name
        view.placeholder = "Full Name"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static var usernameField: UITextField {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.textContentType = .username
        view.placeholder = "Username"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static var passwordField: UITextField {
        let view = UITextField()
        view.borderStyle = .roundedRect
        view.textContentType = .password
        view.placeholder = "Password"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
