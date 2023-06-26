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
        label.text = StringConstants.loginTitle
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        return label
    }()
    let loginDescription: UILabel = {
        let loginDescription = UILabel()
        loginDescription.text = StringConstants.loginDescription
        loginDescription.font = UIFont.systemFont(ofSize: 18)
        loginDescription.textAlignment = .left
        loginDescription.numberOfLines = 0
        return loginDescription
    }()
    let usernameTextField: UITextField = {
        let usernameTextField = UITextField()
        let userIconImage = UIImage(named: UIImage.userIconImage)
        let userIconImageView = UIImageView(image: userIconImage)
        usernameTextField.placeholder = StringConstants.email
        usernameTextField.leftViewMode = .always
        usernameTextField.leftView = userIconImageView

        usernameTextField.borderStyle = .roundedRect
        return usernameTextField
    }()

    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        let userIconImage = UIImage(named: UIImage.userIconImagePassword)
        let userIconImageView = UIImageView(image: userIconImage)
        passwordTextField.leftViewMode = .always
        passwordTextField.leftView = userIconImageView
        passwordTextField.placeholder = StringConstants.password
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        return passwordTextField
    }()

    let dividerLabel: UILabel = {
        let dividerLabel = UILabel()
        dividerLabel.text = StringConstants.loginOr
        dividerLabel.font = UIFont.systemFont(ofSize: 14)
        dividerLabel.textAlignment = .center
        return dividerLabel
    }()

    let forgotPasswordLabel: UILabel = {
        let forgotPasswordLabel = UILabel()
        forgotPasswordLabel.text = StringConstants.forgotPassword
        forgotPasswordLabel.font = UIFont.systemFont(ofSize: 14)
        forgotPasswordLabel.textAlignment = .center
        return forgotPasswordLabel
    }()

    let loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle(StringConstants.signIn, for: .normal)
        loginButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        loginButton.backgroundColor = .buttonThemeColor
        loginButton.layer.shadowOpacity = -0.5
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 8
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return loginButton
    }()

    let signupButton: UIButton = {
        let signupButton = UIButton(type: .system)
        signupButton.setTitle( StringConstants.signInGoogle, for: .normal)
        signupButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        signupButton.backgroundColor = .white
        signupButton.layer.cornerRadius = 8
        let iconImage = UIImage(named: UIImage.googleIcon)
        signupButton.setImage(iconImage, for: .normal)
        signupButton.imageView?.contentMode = .scaleAspectFit
        signupButton.layer.shadowOpacity = -0.5
        signupButton.setTitleColor(.black, for: .normal)
        signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
        return signupButton
    }()

    let newAccountLabel: UILabel = {
        let newAccountLabel = UILabel()
        newAccountLabel.text = StringConstants.newAccount
        newAccountLabel.font = UIFont.systemFont(ofSize: 14)
        newAccountLabel.textAlignment = .center
        return newAccountLabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
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
    }
    @objc func signupButtonTapped() {
    }
}

