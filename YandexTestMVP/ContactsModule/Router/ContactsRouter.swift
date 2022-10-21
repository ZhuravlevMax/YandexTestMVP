//
//  ContactsRouter.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 21.10.22.
//

import Foundation
import UIKit

protocol ContactsRouterProtocol: BaseModuleRouterProtocol {
    
}

class ContactsRouter: ContactsRouterProtocol {
    
    var builder: ModuleBuilder?
    var viewController: UIViewController?
    
    init(builder: ModuleBuilder, viewController: UIViewController) {
        self.builder = builder
        self.viewController = viewController
    }
}
