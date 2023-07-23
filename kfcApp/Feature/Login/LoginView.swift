//
//  LoginView.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 25.06.2023.
//

import Foundation
import UIKit

final class LoginView: UIViewController{
    lazy var loginViewNavigate: LoginViewNavigate = {
        return LoginViewNavigate(vc: self)
    }()

    lazy var loginViewLoad: LoginViewLoad = {
        return LoginViewLoad(
            view: view,
            useCaseLogin: LoginUseCase(loginViewNavigate: loginViewNavigate)
        )
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       loginViewLoad.setup()
    }
}

