//
//  LoginViewConstraints.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 26.06.2023.
//

import Foundation
import UIKit

extension LoginViewLoad {
    func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        loginDescription.translatesAutoresizingMaskIntoConstraints = false

        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        dividerLabel.translatesAutoresizingMaskIntoConstraints = false
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        newAccountLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            loginDescription.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            loginDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            usernameTextField.topAnchor.constraint(equalTo: loginDescription.bottomAnchor, constant: 40),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            usernameTextField.heightAnchor.constraint(equalToConstant: 40),

            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),

            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 40),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 40),

            forgotPasswordLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            forgotPasswordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            forgotPasswordLabel.heightAnchor.constraint(equalToConstant: 40),

            dividerLabel.topAnchor.constraint(equalTo: forgotPasswordLabel.bottomAnchor, constant: 20),
            dividerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            dividerLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            signupButton.topAnchor.constraint(equalTo: dividerLabel.bottomAnchor, constant: 20),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            signupButton.heightAnchor.constraint(equalToConstant: 40),

            newAccountLabel.topAnchor.constraint(equalTo: signupButton.bottomAnchor, constant: 20),
            newAccountLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            newAccountLabel.heightAnchor.constraint(equalToConstant: 40)
            ])
    }
}
