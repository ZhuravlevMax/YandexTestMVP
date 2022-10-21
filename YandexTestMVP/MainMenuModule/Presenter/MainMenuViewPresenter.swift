//
//  MainMenuViewPresenter.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 19.10.22.
//

import Foundation
import UIKit

protocol MainMenuViewPresenterProtocol: AnyObject {
    
}

class MainMenuViewPresenter: MainMenuViewPresenterProtocol {
    
    weak var view: MainMenuViewProtocol?
    private(set) var router: MainMenuRouterProtocol
    
    required init(view: MainMenuViewProtocol, router: MainMenuRouterProtocol) {
        self.router = router
        self.view = view
    }
}
