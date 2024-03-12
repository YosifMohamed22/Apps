//
//  LoginViewController.swift
//  Talabaty
//
//  Created by Youssef on 07/03/2024.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var EmailImageView: UIView!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordImageView: UIView!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var ForgotPassword: UIButton!
    @IBOutlet weak var LoginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        SetupUI1()
        SetupUI2()
    }
    @IBAction func didPressedForgotPassword(_ sender: Any) {
        let vc = ForgotPasswordViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    @IBAction func didPressedLogin(_ sender: Any) {
        
    }
    private func SetupUI1() {
        let EmailImageView = UIImageView()
        let image = UIImage(named: "EmailTextField")
        EmailTextField.leftView = EmailImageView
    }
    private func SetupUI2() {
        let PasswordImageView = UIImageView()
        let image = UIImage(named: "PasswordTextField")
        EmailTextField.leftView = PasswordImageView
    }
}
