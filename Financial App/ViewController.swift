//
//  ViewController.swift
//  Financial App
//
//  Created by Efe on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
    }
    func createButton() {
        self.button.frame = CGRect(x: 0, y: 0, width: 200, height: 80)
        self.button.center = self.view.center
        self.button.setTitle("Hello", for: .normal)
        self.button.backgroundColor = .white
        self.view.addSubview(button)
    }
    
}

