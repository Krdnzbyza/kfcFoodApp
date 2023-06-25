//
//  LoginView.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 25.06.2023.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.loginTitle
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        return label
    }()
    let titleLabel2: UILabel = {
        let label2 = UILabel()
        label2.text = Constants.loginDescription
        label2.font = UIFont.systemFont(ofSize: 18)
        label2.textAlignment = .left
        label2.numberOfLines = 0
        return label2
    }()
    let usernameTextField: UITextField = {
        let textField = UITextField()
        let userIconImage = UIImage(named: "emailIcon")
        let userIconImageView = UIImageView(image: userIconImage)
        textField.placeholder = Constants.email
        textField.leftViewMode = .always
         textField.leftView = userIconImageView

        textField.borderStyle = .roundedRect
        return textField
    }()

    let passwordTextField: UITextField = {
        let textField = UITextField()
        let userIconImage = UIImage(named: "passwordIcons")
        let userIconImageView = UIImageView(image: userIconImage)
        textField.leftViewMode = .always
         textField.leftView = userIconImageView
        textField.placeholder = Constants.password
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        return textField
    }()

    let dividerLabel: UILabel = {
        let label = UILabel()
        label.text = "veya"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()

    let forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.forgotPassword
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()

    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .buttonThemeColor
        button.layer.shadowOpacity = -0.5

        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
    }()

    let signupButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In with Google", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.backgroundColor = .white
        button.layer.cornerRadius = 8
        let iconImage = UIImage(named: "googleIcons")
        button.setImage(iconImage, for: .normal)
          button.imageView?.contentMode = .scaleAspectFit
        button.layer.shadowOpacity = -0.5


        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
        return button
    }()

    let newAccountLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.newAccount
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundThemeColor

        view.addSubview(titleLabel)
        view.addSubview(titleLabel2)

        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(dividerLabel)
        view.addSubview(signupButton)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(newAccountLabel)
        setupConstraints()
    }

    func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel2.translatesAutoresizingMaskIntoConstraints = false

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

            titleLabel2.topAnchor.constraint(equalTo:  titleLabel.bottomAnchor, constant: 10),
            titleLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            usernameTextField.topAnchor.constraint(equalTo: titleLabel2.bottomAnchor, constant: 40),
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

    @objc func loginButtonTapped() {
        // Giriş yap butonuna tıklanınca yapılacak işlemler
    }

    @objc func signupButtonTapped() {
        // Kaydol butonuna tıklanınca yapılacak işlemler
    }
}
