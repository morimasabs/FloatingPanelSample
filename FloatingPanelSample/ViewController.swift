//
//  ViewController.swift
//  FloatingPanelSample
//
//  Created by Masahito Mori on 2024/10/08.
//

import UIKit
import FloatingPanel

class ViewController: UIViewController, FloatingPanelControllerDelegate {
    var fpc: FloatingPanelController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        // Initialize a `FloatingPanelController` object.
        fpc = FloatingPanelController()

        // Assign self as the delegate of the controller.
        fpc.delegate = self // Optional

        // Set a content view controller.
        let contentVC = ContentViewController()
        fpc.set(contentViewController: contentVC)

        // Track a scroll view(or the siblings) in the content view controller.
        fpc.track(scrollView: contentVC.tableView)

        // Add and show the views managed by the `FloatingPanelController` object to self.view.
        fpc.addPanel(toParent: self)
    }
}
