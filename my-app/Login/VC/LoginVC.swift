//
//  ViewController.swift
//  my-app
//
//  Created by Vinicius Libarino on 27/11/23.
//

import UIKit

class LoginVC: UIViewController {
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

