//
//  ViewController.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 18.10.22.
//

import UIKit

protocol MainMenuViewProtocol: AnyObject {
    
}

class MainMenuViewController: UIViewController, MainMenuViewProtocol {
    
    var presenter: MainMenuViewPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
    }


}

