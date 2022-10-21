//
//  BaseModulRouter.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 19.10.22.
//

import Foundation
import UIKit

protocol BaseModuleRouterProtocol {
    var builder: ModuleBuilder? {get set}
    var viewController: UIViewController? {get}
}
