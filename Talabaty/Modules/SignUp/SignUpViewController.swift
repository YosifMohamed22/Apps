//
//  SignUpViewController.swift
//  Talabaty
//
//  Created by Youssef on 07/03/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var BackScreenBarButton: UIBarButtonItem!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PhoneTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var SignUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func ActionBackScreen(_ sender: Any) {
        let vc = IntroViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
        
    }
    
    @IBAction func ActionSignUp(_ sender: Any) {
        let vc = LoginViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    private func SetupUI(){
        
    }
}
