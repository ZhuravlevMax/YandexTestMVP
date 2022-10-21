//
//  TabbarViewControllerRouter.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 20.10.22.
//

import Foundation
import UIKit

protocol BaseTabBarControllerRouter {
    
    var tabBarController: UITabBarController? {get set}
    var builder: BuilderProtocol? {get set}
    
}

protocol ViewsRouterProtocol: BaseTabBarControllerRouter {
    
    func initViewControllers()
    
}

class TabBarControllerRouter: ViewsRouterProtocol {
    
    var tabBarController: UITabBarController?
    var builder: BuilderProtocol?
    
    init(tabBarController: UITabBarController, builder: BuilderProtocol) {
        self.tabBarController = tabBarController
        self.builder = builder
    }
    
    func initViewControllers() {
        guard let builder = builder, let tabBarController = tabBarController else {return}
        let mainMenuViewController = UINavigationController(rootViewController: builder.createMainMenuModule(title: "Menu", image: UIImage(systemName: "fork.knife.circle")))
        let contactsViewController = UINavigationController(rootViewController: builder.createContactsModule(title: "Contacts", image: UIImage(systemName: "iphone.circle")))
        
        tabBarController.viewControllers = [mainMenuViewController, contactsViewController]
    }
}
