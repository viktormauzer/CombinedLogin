//
//  ViewController.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 31.08.2022..
//

import UIKit

class EntryViewController: UIViewController {
    
    let vm = EntryViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .systemBackground
        
        let nameField = TextFieldViews.nameField
        nameField.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(nameField)
        
        NSLayoutConstraint.activate([
            nameField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameField.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}

