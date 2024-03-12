//
//  OnBoarding2ViewController.swift
//  Talabaty
//
//  Created by Youssef on 08/03/2024.
//

import UIKit

class OnBoarding2ViewController: UIViewController {
    @IBOutlet weak var didPressedSkip: UIButton!
    @IBOutlet weak var didPressedNext: UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    @IBAction func ActionSkip(_ sender: Any) {
        let vc = IntroViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    @IBAction func ActionNext(_ sender: Any) {
        let vc = OnBoarding3ViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    

}
