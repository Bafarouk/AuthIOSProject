//
//  LoginResponse.swift
//  AuthIOSProject
//
//  Created by Mohamed Farouk Ben Akacha on 11/8/2024.
//

import Foundation

struct LoginResponse: Decodable {
    let data: LoginResponseData
}

struct LoginResponseData: Decodable {
    let accessToken: String
    let refreshToken: String
}
