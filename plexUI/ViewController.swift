//
//  ViewController.swift
//  plexUI
//
//  Created by user186822 on 1/23/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var policyTerms: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributedString = NSMutableAttributedString(string: policyTerms.text!)
        let range1 =  (policyTerms.text! as NSString).range(of: "Terms of Service")
        let range2 =  (policyTerms.text! as NSString).range(of: "Privacy Policy")
        let color = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor,value:color, range: range1)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor,value:color, range: range2)
        policyTerms.attributedText = attributedString
        for uiView in stackView.subviews {
            uiView.layer.cornerRadius = 10
            
        }
    }
    
    

}

