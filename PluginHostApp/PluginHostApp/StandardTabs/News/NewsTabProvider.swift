//
//  NewsTabProvider.swift
//  PluginHostApp
//
//  Created by Nestor Popko on 13.09.2022.
//

import Foundation

final class NewsTabProvider: AnyTabProvider {
    static func getTabs() -> [AnyTab] {
        [NewsTab()]
    }
}

