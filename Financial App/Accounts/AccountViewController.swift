//  AccountViewController.swift
//  Financial App
//  Created by Efe on 24.11.2021.

import UIKit

class AccountViewController: UIViewController {
    //MARK: Variables
    let choose = UIButton()
    let add = UIButton()
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Account"
        backgroundColor()
        chooseButton()
        addButton()
        //MARK: Targets
        self.add.addTarget(self, action: #selector(addButtonPressed(sender:)), for: .touchUpInside)
        self.choose.addTarget(self, action: #selector(chooseButtonPressed(sender:)), for: .touchUpInside)
    }
    //MARK: Background Color
    func backgroundColor() {
        let layer = CAGradientLayer()
        layer.frame = view.bounds
        layer.colors = [UIColor.systemPurple.cgColor, UIColor.systemGray3.cgColor]
        self.view.layer.addSublayer(layer)
    }
    //MARK: Buttons
    func chooseButton() {
        self.choose.frame = CGRect(x: 115, y: 300, width: 200, height: 100)
        self.choose.setTitle("Choose", for: .normal)
        self.choose.tintColor = .red
        self.choose.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.choose.layer.cornerRadius = 15
        self.choose.backgroundColor = .systemFill
        self.choose.layer.borderWidth = 3
        self.choose.layer.borderColor = UIColor.black.cgColor
        self.view.addSubview(choose)
    }
    func  addButton() {
        self.add.frame = CGRect(x: 115, y: 500, width: 200, height: 100)
        self.add.setTitle("Add", for: .normal)
        self.add.tintColor = .white
        self.add.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.add.layer.cornerRadius = 15
        self.add.backgroundColor = .systemFill
        self.add.layer.borderWidth = 3
        self.add.layer.borderColor = UIColor.black.cgColor
        self.view.addSubview(add)
    }
    //MARK: Add Button Pressed
    @objc func addButtonPressed(sender : UIButton) {
        if sender == self.add {
            self.show(AddAccount(), sender: .none)
        }
    }
    //MARK: Choose Button Pressed
    @objc func chooseButtonPressed(sender : UIButton) {
        if sender == self.choose {
            self.show(ChooseAccountViewController(), sender: .none)
        }
    }
}
