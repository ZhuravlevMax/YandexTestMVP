//
//  ModuleBuilder.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 19.10.22.
//

import Foundation
import UIKit

protocol BuilderProtocol {
    func createMainMenuModule(title: String, image: UIImage?) -> UIViewController
    func createContactsModule(title: String, image: UIImage?) -> UIViewController
//    func createProfileMenuModule(title: String, image: UIImage?) -> UIViewController
//    func createShoppingCartModule(title: String, image: UIImage?) -> UIViewController
}

class ModuleBuilder: BuilderProtocol {
    
    func createMainMenuModule(title: String, image: UIImage?) -> UIViewController {
        let view = MainMenuViewController()
        view.tabBarItem.title = title
        view.tabBarItem.image = image
        let router = MainMenuRouter(builder: self, viewController: view)
        let presenter = MainMenuViewPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createContactsModule(title: String, image: UIImage?) -> UIViewController {
        let view = ContactsViewController()
        view.tabBarItem.title = title
        view.tabBarItem.image = image
        let router = ContactsRouter(builder: self, viewController: view)
        let presenter = ContactsViewPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
//
//    func createProfileMenuModule(title: String, image: UIImage?) -> UIViewController {
//        <#code#>
//    }
//
//    func createShoppingCartModule(title: String, image: UIImage?) -> UIViewController {
//        <#code#>
//    }

}
