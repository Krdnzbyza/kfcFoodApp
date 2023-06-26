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
    let useCase: SplashUseCase
    let splashBackgroundImage = UIImageView()
    let kfcLogo = UIImageView()
    let scrollView = UIScrollView()
    let pageControl = UIPageControl()
    let splashStartButton = UIButton()

    init(view: UIView, scrollDelegate: UIScrollViewDelegate, useCase: SplashUseCase) {
        self.view = view
        self.scrollDelegate = scrollDelegate
        self.useCase = useCase
    }

    func setup() {
        splashBackgroundImage.image = UIImage(named: UIImage.splashBackgroundImage)
        splashBackgroundImage.contentMode = .scaleAspectFill
        splashBackgroundImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(splashBackgroundImage)

        kfcLogo.image = UIImage(named: UIImage.kfcLogo)
        kfcLogo.contentMode = .scaleAspectFit
        kfcLogo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(kfcLogo)
        pageViewText()
        view.addSubview(pageControl)

        splashStartButton.setTitle(StringConstants.splashbutton, for: .normal)
        splashStartButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)

        splashStartButton.backgroundColor = .buttonThemeColor
        splashStartButton.layer.cornerRadius = 10
        splashStartButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(splashStartButton)
        view.backgroundColor = .backgroundThemeColor
        loadConstraints()
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        pageControl.currentPage = Int(pageNumber)
    }
    @objc func buttonClicked() {
        useCase.operation(value: true)
    }
}

extension SplashViewLoad {
    func pageViewText() {
        let pages = [UIView(), UIView(), UIView()]
        let pageTexts = [StringConstants.splashText1, StringConstants.splashText2, StringConstants.splashText3]
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
    }
}
