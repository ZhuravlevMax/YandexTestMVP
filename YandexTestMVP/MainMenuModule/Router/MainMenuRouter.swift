//
//  MainMenuRouter.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 19.10.22.
//

import Foundation
import UIKit

protocol MainMenuRouterProtocol: BaseModuleRouterProtocol {
    
}

class MainMenuRouter: MainMenuRouterProtocol {
    
    var builder: ModuleBuilder?
    var viewController: UIViewController?
    
    init(builder: ModuleBuilder, viewController: UIViewController) {
        self.builder = builder
        self.viewController = viewController
    }
    
}

