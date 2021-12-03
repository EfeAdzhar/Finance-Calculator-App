//  AddAccount.swift
//  Financial App
//  Created by Efe on 29.11.2021.

import UIKit

class AddAccount: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemPink
        emailTextField()
        passwordTextField()
        labelEmail()
        labelPassword()
        addAccountButton()
    }
    
    func emailTextField() {
        let textField = UITextField()
        textField.frame = CGRect(x: 50, y: 300, width: 300, height: 30)
        textField.placeholder = "email"
        textField.keyboardType = .emailAddress
        textField.backgroundColor = .systemBlue
        self.view.addSubview(textField)
    }
    
    func passwordTextField() {
        let textField = UITextField()
        textField.frame = CGRect(x: 50, y: 400, width: 300, height: 30)
        textField.placeholder = "password"
        textField.backgroundColor = .systemBlue
        self.view.addSubview(textField)
    }
    
    func labelEmail() {
        let label = UILabel()
        label.text = "Email"
        label.frame = CGRect(x: 50, y: 250, width: 100, height: 30)
        self.view.addSubview(label)
    }
    
    func labelPassword() {
        let label = UILabel()
        label.text = "Password"
        label.frame = CGRect(x: 50, y: 350, width: 100, height: 30)
        self.view.addSubview(label)
    }
    
    func addAccountButton() {
        let button = UIButton()
        button.frame = CGRect(x: 135, y: 500, width: 150, height: 60)
        button.setTitle("Add", for: .normal)
        button.backgroundColor = .systemBlue
        self.view.addSubview(button)
    }
}
