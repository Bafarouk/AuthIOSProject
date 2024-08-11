//
//  LoginViewModel.swift
//  AuthIOSProject
//
//  Created by Mohamed Farouk Ben Akacha on 11/8/2024.
//

import Foundation

class LoginViewModel: ObservableObject {

    @Published var username: String = ""
    @Published var password: String = ""

    func login() {
        LoginAction(
            parameters: LoginRequest(
                username: username,
                password: password
            )
        ).call { _ in

        }
    }
}
