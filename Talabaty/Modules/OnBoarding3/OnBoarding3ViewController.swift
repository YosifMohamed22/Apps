//
//  OnBoarding3ViewController.swift
//  Talabaty
//
//  Created by Youssef on 07/03/2024.
//

import UIKit

class OnBoarding3ViewController: UIViewController {
    
    @IBOutlet weak var didPressedGetStarted: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func ActionGetStarted(_ sender: Any) {
        let vc = IntroViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    

   

}
