//
//  SplashUsecase.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 25.06.2023.
//

import Foundation


struct SplashUseCase {
    let splashViewNavigate: SplashViewNavigate
    func operation(value: Bool) {
            if value {
                splashViewNavigate.navigateLogin()
            }
    }
}
