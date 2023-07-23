//
//  LoginViewNavigate.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 23.07.2023.
//

import Foundation
import UIKit

struct LoginViewNavigate {
    let vc: UIViewController
    func navigateHome() {
        let loginView = LoginView()
        self.vc.navigationController?.pushViewController(loginView, animated: true)
    }
}
