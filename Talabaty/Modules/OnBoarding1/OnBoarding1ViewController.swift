//
//  OnBoarding1ViewController.swift
//  Talabaty
//
//  Created by Youssef on 06/03/2024.
//

import UIKit

class OnBoarding1ViewController: UIViewController {
    @IBOutlet weak var didPressedNext: UIButton!
    @IBOutlet weak var didPressedSkip: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func ActionNext(_ sender: Any) {
        let vc = OnBoarding2ViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    @IBAction func ActionSkip(_ sender: Any) {
        let vc = IntroViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
}
