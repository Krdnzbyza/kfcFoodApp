//
//  SplashViewItems.swift
//  kfcApp
//
//  Created by Beyza Karadeniz on 25.06.2023.
//

import Foundation
import UIKit

final class SplashViewLoad {
    let view: UIView
    let scrollDelegate: UIScrollViewDelegate
    let onPressed: () -> Void

    let useCase: SplashUseCase

    init(view: UIView, scrollDelegate: UIScrollViewDelegate, useCase: SplashUseCase, onPressed: @escaping () -> Void) {
        self.view = view
        self.scrollDelegate = scrollDelegate
        self.onPressed = onPressed
        self.useCase = useCase
    }

    let imageView = UIImageView()
    let centerImageView = UIImageView()
    let scrollView = UIScrollView()
    let pageControl = UIPageControl()
    let pages = [UIView(), UIView(), UIView()]

    let textField1 = UILabel()
    let textField2 = UILabel()
    let button = UIButton()

    func setup() {
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)

        centerImageView.image = UIImage(named: "kfcLogo")
        centerImageView.contentMode = .scaleAspectFit
        centerImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(centerImageView)
        let pageTexts = [Constants.splashText1, Constants.splashText2, Constants.splashText3]
        for i in 0..<pages.count {
            let label = UILabel(frame: CGRect(x: 20, y: 0, width: view.frame.size.width - 40, height: 50))
            label.text = pageTexts[i]
            label.numberOfLines = 0
            pages[i].addSubview(label)
        }
        scrollView.isPagingEnabled = true
        scrollView.contentSize = CGSize(width: view.frame.size.width * CGFloat(pages.count), height: 200)
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.delegate = scrollDelegate
        view.addSubview(scrollView)
        for i in 0 ..< pages.count {
            pages[i].frame = CGRect(x: view.frame.size.width * CGFloat(i), y: 0, width: view.frame.size.width, height: 200)
            scrollView.addSubview(pages[i])
        }

        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
        pageControl.backgroundColor = .clear
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pageControl)

        button.setTitle(Constants.splashbutton, for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)

        button.backgroundColor = .buttonThemeColor
        button.layer.cornerRadius = 10

        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        view.backgroundColor = .backgroundThemeColor

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),

            centerImageView.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            centerImageView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            centerImageView.widthAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 0.5),
            centerImageView.heightAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: 0.5),

            scrollView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.heightAnchor.constraint(equalToConstant: 200),

            pageControl.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 20),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            button.topAnchor.constraint(equalTo: pageControl.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)

    }

    @objc func buttonClicked() {
        useCase.operation(value: true)
    }
}
