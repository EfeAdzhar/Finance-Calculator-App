//
//  ChooseAccountViewController.swift
//  Financial App
//
//  Created by Efe on 15.01.2022.
//

import UIKit

class ChooseAccountViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView()
    }
 
    func backgroundView() {
        let layer = CAGradientLayer()
        layer.frame = self.view.bounds
        layer.colors = [UIColor.systemBlue.cgColor, UIColor.systemRed.cgColor]
        self.view.layer.addSublayer(layer)
    }
    func alert() {
        
    }
    
}
