//
//  NewsViewController.swift
//  PluginHostApp
//
//  Created by Nestor Popko on 13.09.2022.
//

import Foundation
import UIKit

final class NewsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        buildUI()
    }
}

private extension NewsViewController {
    func buildUI() {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 36)
        label.text = "News"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

