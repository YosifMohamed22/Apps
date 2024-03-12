//
//  RoutRouter.swift
//  Talabaty
//
//  Created by Youssef on 07/03/2024.
//

import Foundation
import UIKit

class RoutRouter {
    
    static func presentRootScreen(with root: UIViewController) {
        let window = UIApplication.shared.windows.filter{$0.isKeyWindow}.first
        window?.makeKeyAndVisible()
        window?.rootViewController = root
    }
}

