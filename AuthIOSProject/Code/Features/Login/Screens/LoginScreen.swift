//
//  LoginScreen.swift
//  AuthIOSProject
//
//  Created by Mohamed Farouk Ben Akacha on 11/8/2024.
//

import SwiftUI

struct LoginScreen: View {

    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()

    var body: some View {
        VStack {
            Spacer()

            VStack {
                TextField(
                    "Login.UsernameField.Title",
                    text: $viewModel.username
                )
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(20)

                Divider()

                SecureField("Login.PasswordField.Title", text: $viewModel.password)
                    .padding(20)

                Divider()
            }

            Spacer()

            Button(action: viewModel.login, label: {
                Text("Login.LoginButton.Title")
                .font(.system(size: 24, weight: .bold, design: .default))
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundColor(Color.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            )
        }
        .padding(30)
    }
}

struct LoginScreenPreview: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
