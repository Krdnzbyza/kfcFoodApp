//
//  LoginView.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 24.06.2023.
//

import Foundation
import UIKit

final class SplashView: UIViewController, UIScrollViewDelegate {
    lazy var splashViewNavigate: SplashViewNavigate = {
        return SplashViewNavigate(vc: self)
    }()
    lazy var splashViewLoad: SplashViewLoad = {
        return SplashViewLoad(
            view: view,
            scrollDelegate: self,
            useCase: SplashUseCase(splashViewNavigate: splashViewNavigate),
            onPressed: { })
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        splashViewLoad.setup()
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        splashViewLoad.scrollViewDidEndDecelerating(scrollView)
    }
}
