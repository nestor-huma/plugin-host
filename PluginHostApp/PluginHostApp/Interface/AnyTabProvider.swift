//
//  AnyTabProvider.swift
//  PluginHostApp
//
//  Created by Nestor Popko on 13.09.2022.
//

import Foundation

public protocol AnyTabProvider {
    static func getTabs() -> [AnyTab]
}
