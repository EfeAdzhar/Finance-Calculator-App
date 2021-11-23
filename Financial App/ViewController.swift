//  ViewController.swift
//  Financial App
//  Created by Efe on 23.11.2021.

import UIKit

class ViewController: UIViewController {
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
        self.view.backgroundColor = .clear
        self.button.addTarget(self, action: #selector(goToNextStoryboard(sender:)), for: .touchUpInside)
    }
    
    func createButton() {
        self.button.frame = CGRect(x: 0, y: 0, width: 200, height: 80)
        self.button.center = self.view.center
        self.button.setTitle("Welcome", for: .normal)
        self.button.backgroundColor = .black
        self.view.addSubview(button)
    }
    
    @objc func goToNextStoryboard(sender : UIButton) {
        if sender == self.button {
            self.present(SecondViewController(), animated: true, completion: .none)
        }
    }
}
