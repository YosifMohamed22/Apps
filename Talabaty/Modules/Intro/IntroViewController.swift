//
//  IntroViewController.swift
//  Talabaty
//
//  Created by Youssef on 07/03/2024.
//

import UIKit

class IntroViewController: UIViewController {
    
    @IBOutlet weak var IntroImage: UIImageView!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var SignUpButton: UIButton!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the original image
        guard let originalImage = UIImage(named: "Intro") else {
            fatalError("Unable to load image")
        }
        
        // Apply the curve effect
        if let curvedImage = applyCurveEffect(to: originalImage) {
            IntroImage.image = curvedImage
        }
    }
    @IBAction private func didPressedLogin(_ sender: Any) {
        let vc = LoginViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    @IBAction private func didPressedSignUp(_ sender: Any) {
        let vc = SignUpViewController()
        let nav = AppNavController(rootViewController: vc)
        RoutRouter.presentRootScreen(with: nav)
    }
    
    
    func applyCurveEffect(to image: UIImage) -> UIImage? {
        guard let IntroImage = CIImage(image: image) else { return nil }
        
        // Create a CIFilter for the CylinderEffect
        let filter = CIFilter(name: "CylinderEffect")
        filter?.setValue(IntroImage, forKey: kCIInputImageKey)
        
        // Set parameters for the curve effect
        filter?.setValue(CIVector(x: IntroImage.extent.width / 2, y: IntroImage.extent.height / 2), forKey: "inputCenter")
        filter?.setValue(50, forKey: "inputRadius")
        filter?.setValue(3.14, forKey: "inputAngle")
        
        // Get the output CIImage from the filter
        if let outputImage = filter?.outputImage {
            let context = CIContext()
            if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgImage)
            }
        }
        return nil
    }
}
