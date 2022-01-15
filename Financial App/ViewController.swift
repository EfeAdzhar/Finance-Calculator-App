//  ViewController.swift
//  Financial App
//  Created by Efe on 23.11.2021.

import UIKit
class ViewController: UIViewController {
    //MARK: Variables
    let button = UIButton()
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome"
        createButton()
        self.view.backgroundColor = .systemTeal
        self.button.addTarget(self, action: #selector(goToNextStoryboard(sender:)), for: .touchUpInside)
    }
    //MARK: Functions
    func createButton() {
        self.button.frame = CGRect(x: 0, y: 0, width: 200, height: 80)
        self.button.center = self.view.center
        self.button.tintColor = UIColor.white
        self.button.setTitle("Welcome", for: .normal)
        self.button.backgroundColor = .systemPink
        self.button.layer.cornerRadius = 15
        self.button.layer.borderWidth = 3
        self.button.layer.borderColor = UIColor.black.cgColor
        self.button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.view.addSubview(button)
    }
    //MARK: Button Actions
    @objc func goToNextStoryboard(sender : UIButton) {
        if sender == self.button {
            self.show(SecondViewController(), sender: .none)
        }
    }
}
