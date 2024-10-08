//
//  ContentViewController.swift
//  FloatingPanelSample
//
//  Created by Masahito Mori on 2024/10/08.
//

import UIKit

final class ContentViewController: UIViewController {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        view.backgroundColor = .gray    
        view.addSubview(tableView)
    }
}
