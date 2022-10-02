//
//  NewsTab.swift
//  PluginHostApp
//
//  Created by Nestor Popko on 13.09.2022.
//

import Foundation
import UIKit

final class NewsTab: AnyTab {
    var tabName: String { "News" }
    var tabImage: UIImage { .init(systemName: "newspaper")! }
    var rootViewController: UIViewController
    
    init() {
        rootViewController = NewsViewController()
    }
}

