//
//  ContentViewController.swift
//  FloatingPanelSample
//
//  Created by Masahito Mori on 2024/10/08.
//

import UIKit

final class ContentViewController: UIViewController {
    let scrollView = UIScrollView()
    private let stackView = UIStackView()
    private let headerView = UIView()
    private let contentView = UIView()
    
    override func viewDidLoad() {
        view.addSubview(scrollView)
        scrollView.backgroundColor = .gray
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        stackView.backgroundColor = .darkGray
        scrollView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
        ])
        
        stackView.addSubview(headerView)
        headerView.backgroundColor = .blue
        headerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: stackView.topAnchor),
            headerView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            headerView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 500),
        ])
        
        stackView.addSubview(contentView)
        contentView.backgroundColor = .green
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            contentView.leftAnchor.constraint(equalTo: stackView.leftAnchor),
            contentView.rightAnchor.constraint(equalTo: stackView.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: stackView.bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 500),
        ])
    }
}

#Preview {
    ContentViewController()
}
