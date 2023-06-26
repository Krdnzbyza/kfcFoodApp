//
//  SplashViewLoad+Constraints.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 26.06.2023.
//

import Foundation
import UIKit

extension SplashViewLoad {
    func loadConstraints() {
        NSLayoutConstraint.activate([
            splashBackgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            splashBackgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            splashBackgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            splashBackgroundImage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

            kfcLogo.centerXAnchor.constraint(equalTo: splashBackgroundImage.centerXAnchor),
            kfcLogo.centerYAnchor.constraint(equalTo: splashBackgroundImage.centerYAnchor),
            kfcLogo.widthAnchor.constraint(equalTo: splashBackgroundImage.widthAnchor, multiplier: 0.5),
            kfcLogo.heightAnchor.constraint(equalTo: splashBackgroundImage.heightAnchor, multiplier: 0.5),

            scrollView.topAnchor.constraint(equalTo: splashBackgroundImage.bottomAnchor, constant: 40),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 200),

            pageControl.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 20),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            splashStartButton.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 20),
            splashStartButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            splashStartButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
    }
}
