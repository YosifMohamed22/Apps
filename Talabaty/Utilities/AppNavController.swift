//
//  AppNavController.swift
//  Talabaty
//
//  Created by Youssef on 08/03/2024.
//

import Foundation
import UIKit

class AppNavController: UINavigationController {
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        // Setup UI
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // Setup UI
        setupUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Setup UI
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupUI() {
        navigationBar.tintColor = UIColor.black
        
        navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .medium),
            NSAttributedString.Key.foregroundColor: UIColor.black
        ]
    }
}
