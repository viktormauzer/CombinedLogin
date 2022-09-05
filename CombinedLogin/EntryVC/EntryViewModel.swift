//
//  EntryViewModel.swift
//  CombinedLogin
//
//  Created by Viktor Mauzer on 31.08.2022..
//

import Foundation
import Combine

final class EntryViewModel {
    @Published var name: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    @Published var isLoading: Bool = false
    
    var isFormValid: AnyPublisher<Bool, Never> {
        
        Publishers
            .CombineLatest4($name, $username, $password, $confirmPassword)
            .map { name, username, password, confirmPassword in
                !name.isEmpty &&
                !username.isEmpty &&
                !password.isEmpty &&
                !confirmPassword.isEmpty &&
                password == confirmPassword
            }
            .eraseToAnyPublisher()
    }
    
    func registerUser() {
        // pretending to do a network call
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.isLoading = false
        }
    }
}
