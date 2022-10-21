//
//  ContactsViewPresenter.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 21.10.22.
//

import Foundation
import UIKit

protocol ContactsViewPresenterProtocol: AnyObject {
    
}

class ContactsViewPresenter: ContactsViewPresenterProtocol {
    
    weak var view: ContactsViewProtocol?
    private(set) var router: ContactsRouterProtocol?
    
   required init(view: ContactsViewController, router: ContactsRouterProtocol) {
        self.view = view
        self.router = router
    }
}
