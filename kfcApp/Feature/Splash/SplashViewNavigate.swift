//
//  SplashNavigate.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 25.06.2023.
//

import Foundation
import UIKit

struct SplashViewNavigate {
    let vc: UIViewController
    func navigateLogin() {
        let loginViewController = LoginViewController()
        self.vc.navigationController?.pushViewController(loginViewController, animated: true)
    }
}
