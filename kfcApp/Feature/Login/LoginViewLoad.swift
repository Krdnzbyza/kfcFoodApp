//
//  LoginViewLoad.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 23.07.2023.
//

import Foundation
import UIKit


final class LoginViewLoad {
    let view: UIView
    let useCaseLogin: LoginUseCase

    let titleLabel = UILabel()
    let loginDescription = UILabel()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let dividerLabel = UILabel()
    let forgotPasswordLabel = UILabel()
    let loginButton = UIButton(type: .system)
    let signupButton = UIButton(type: .system)
    let newAccountLabel = UILabel()


    init(view: UIView, useCaseLogin: LoginUseCase) {
        self.view = view
        self.useCaseLogin = useCaseLogin
    }

    func setup() {
        titleLabel.text = StringConstants.loginTitle
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.textAlignment = .left

        loginDescription.text = StringConstants.loginDescription
        loginDescription.font = UIFont.systemFont(ofSize: 18)
        loginDescription.textAlignment = .left
        loginDescription.numberOfLines = 0

        let userIconImage = UIImage(named: UIImage.userIconImage)
        let userIconImageView = UIImageView(image: userIconImage)
        usernameTextField.placeholder = StringConstants.email
        usernameTextField.leftViewMode = .always
        usernameTextField.leftView = userIconImageView
        usernameTextField.borderStyle = .roundedRect

        let userIconPasswordImage = UIImage(named: UIImage.userIconImagePassword)
        let userIconPasswordImageView = UIImageView(image: userIconPasswordImage)
        let showPaswordImage = UIImage(named: UIImage.showPasword)
        let userShowIconPasswordImageView = UIImageView(image: showPaswordImage)
        passwordTextField.rightView = userShowIconPasswordImageView
        passwordTextField.rightViewMode = .always
        passwordTextField.leftViewMode = .always
        passwordTextField.leftView = userIconPasswordImageView
        passwordTextField.placeholder = StringConstants.password
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect

        dividerLabel.text = StringConstants.loginOr
        dividerLabel.font = UIFont.systemFont(ofSize: 14)
        dividerLabel.textAlignment = .center

        forgotPasswordLabel.text = StringConstants.forgotPassword
        forgotPasswordLabel.font = UIFont.systemFont(ofSize: 14)
        forgotPasswordLabel.textAlignment = .center

        loginButton.setTitle(StringConstants.logIn, for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.backgroundColor = .buttonThemeColor
        loginButton.layer.shadowOpacity = -0.5
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)

        signupButton.setTitle(StringConstants.logInGoogle, for: .normal)
        signupButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        signupButton.backgroundColor = .white
        signupButton.layer.cornerRadius = 8
        let iconImage = UIImage(named: UIImage.googleIcon)
        signupButton.setImage(iconImage, for: .normal)
        signupButton.imageView?.contentMode = .scaleAspectFit
        signupButton.layer.shadowOpacity = -0.5
        signupButton.setTitleColor(.black, for: .normal)
        signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)

        newAccountLabel.text = StringConstants.newAccount
        newAccountLabel.font = UIFont.systemFont(ofSize: 14)
        newAccountLabel.textAlignment = .center

        view.backgroundColor = .backgroundThemeColor
        view.addSubview(titleLabel)
        view.addSubview(loginDescription)
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(dividerLabel)
        view.addSubview(signupButton)
        view.addSubview(forgotPasswordLabel)
        view.addSubview(newAccountLabel)
        setupConstraints()
    }

    @objc func loginButtonTapped() {
        useCaseLogin.loginOperation(value: true)
    }
    @objc func signupButtonTapped() {
        useCaseLogin.signInOperation(value: true)
    }
}
