//
//  ViewController.swift
//  plexUI
//
//  Created by user186822 on 1/23/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var policyTerms: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributedString = NSMutableAttributedString(string: policyTerms.text!)
        let range1 =  (policyTerms.text! as NSString).range(of: "Terms of Service")
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor,value:UIColor.red, range: range1)
        policyTerms.attributedText = attributedString
    }
    
    

}

