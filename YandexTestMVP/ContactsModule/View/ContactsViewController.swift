//
//  ContactsViewController.swift
//  YandexTestMVP
//
//  Created by Максим Журавлев on 21.10.22.
//

import UIKit

protocol ContactsViewProtocol: AnyObject {
    
}

class ContactsViewController: UIViewController, ContactsViewProtocol {
    
    var presenter: ContactsViewPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
