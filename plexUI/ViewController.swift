//
//  ViewController.swift
//  plexUI
//
//  Created by user186822 on 1/23/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var policyTerms: UILabel!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        for uiView in stackView.subviews {
            uiView.layer.cornerRadius = 6
            
        }
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        let orientation = UIDevice.current.orientation
        if(orientation.isLandscape){
            self.logo.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi/2))
        }else if(orientation.isPortrait){
            self.logo.transform = CGAffineTransform(rotationAngle: CGFloat(0))
        }
        
    }
    

}

