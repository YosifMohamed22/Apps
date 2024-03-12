//
//  SplashViewController.swift
//  Talabaty
//
//  Created by Youssef on 06/03/2024.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now()+4) {
            let vc = OnBoarding1ViewController()
            let nav = AppNavController(rootViewController: vc)
            RoutRouter.presentRootScreen(with: nav)
        }
        //
        
    }
}
