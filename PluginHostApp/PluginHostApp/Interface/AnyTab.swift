//
//  AnyTab.swift
//  PluginHostApp
//
//  Created by Nestor Popko on 13.09.2022.
//

import Foundation
import UIKit

public protocol AnyTab {
    var tabName: String { get }
    var tabImage: UIImage { get }
    var rootViewController: UIViewController { get }
}
