//
//  SceneDelegate.swift
//  PluginHostApp
//
//  Created by Nestor Popko on 13.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = scene as? UIWindowScene else { return }
        
        let window = UIWindow(windowScene: scene)
        window.rootViewController = buildRootViewController()
        window.makeKeyAndVisible()
        
        self.window = window
    }
}

private extension SceneDelegate {
    func buildRootViewController() -> UIViewController {
        let controller = UITabBarController()
        controller.setViewControllers(makeTabs(), animated: false)
        return controller
    }
    
    func makeTabs() -> [UIViewController] {
        getProviderClasses()
            .flatMap { $0.getTabs() }
            .enumerated()
            .map { index, tab in
                let controller = tab.rootViewController
                controller.tabBarItem = UITabBarItem(title: tab.tabName, image: tab.tabImage, selectedImage: tab.tabImage)
                return controller
            }
    }
    
    func getProviderClasses() -> [AnyTabProvider.Type] {
        let standard = TabRegistry.tabProviderClasses
        let custom = PluginRegistry.plugins.compactMap { $0 as? AnyTabProvider.Type }
        return standard + custom
    }
}
