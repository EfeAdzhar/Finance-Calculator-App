//  AddAccount.swift
//  Financial App
//  Created by Efe on 29.11.2021.

import UIKit
//MARK: Variables
class AddAccount: UIViewController {
    let accountButton = UIButton()
    let emailLabel = UILabel()
    let passwordLabel = UILabel()
    var timer : Timer?

    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        //Background Color of View
        backgroundColor()
        //Functions
        emailTextField()
        passwordTextField()
        labelEmail()
        labelPassword()
        addAccountButton()
        //Targets
        self.accountButton.addTarget(self, action: #selector(addAccountButtonPressed(sender :)), for: .touchUpInside)
        //Responders
        self.emailLabel.becomeFirstResponder()
        self.passwordLabel.becomeFirstResponder()
    }
    //MARK: Background
    func backgroundColor() {
        let layer = CAGradientLayer()
        layer.frame = self.view.bounds
        layer.colors = [UIColor.systemGreen.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.addSublayer(layer)
    }
    
    //MARK: Creating Text Fields
    func emailTextField() {
        let textField = UITextField()
        textField.frame = CGRect(x: 50, y: 300, width: 310, height: 40)
        textField.placeholder = " email"
        textField.keyboardType = .emailAddress
        textField.backgroundColor = .systemBlue
        textField.font = UIFont.boldSystemFont(ofSize: 17)
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 11
        self.view.addSubview(textField)
    }
    
    func passwordTextField() {
        let textField = UITextField()
        textField.frame = CGRect(x: 50, y: 400, width: 310, height: 40)
        textField.placeholder = " password"
        textField.isSecureTextEntry = true
        textField.backgroundColor = .systemBlue
        textField.font = UIFont.boldSystemFont(ofSize: 17)
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.borderWidth = 2
        textField.layer.cornerRadius = 11
        self.view.addSubview(textField)
    }
    
    //MARK: Creating Add Button
    func addAccountButton() {
        self.accountButton.frame = CGRect(x: 135, y: 500, width: 150, height: 60)
        self.accountButton.setTitle("Add", for: .normal)
        self.accountButton.backgroundColor = .systemBlue
        accountButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        accountButton.layer.borderColor = UIColor.black.cgColor
        accountButton.layer.borderWidth = 3
        accountButton.layer.cornerRadius = 15
        self.view.addSubview(self.accountButton)
    }
    
    //MARK: Labels
    func labelEmail() {
        emailLabel.text = "Email"
        emailLabel.frame = CGRect(x: 50, y: 270, width: 100, height: 30)
        emailLabel.font = UIFont.boldSystemFont(ofSize: 20)
        self.view.addSubview(emailLabel)
    }
    
    func labelPassword() {
        passwordLabel.text = "Password"
        passwordLabel.frame = CGRect(x: 50, y: 370, width: 100, height: 30)
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 20)
        self.view.addSubview(passwordLabel)
    }
    
    //MARK: Add Account Button Pressed.
    @objc func addAccountButtonPressed(sender : UIButton) {
        //Not working Properly :(
        var emailTextFieldArrayOfCharacters = [Character]()
        var passwordFieldArrayOfCharacters = [Character]()
        
        //Putting All Elements of Email in Array
        for char in emailLabel.text!{
            emailTextFieldArrayOfCharacters.append(char)
        }
        //Putting All Elements of Password in Array
        for char in passwordLabel.text! {
            passwordFieldArrayOfCharacters.append(char)
        }
        //IF
        if emailTextFieldArrayOfCharacters.isEmpty {
            alertForEmail()
            print("alertForEmail")
        }
        if passwordFieldArrayOfCharacters.isEmpty {
            alertForPassword()
            print("alertForPassword")
        }
        if  emailTextFieldArrayOfCharacters.isEmpty && passwordFieldArrayOfCharacters.isEmpty{
            alertForBoth()
            print("alertForBoth")
        }
        if !emailTextFieldArrayOfCharacters.contains("@") && !emailTextFieldArrayOfCharacters.isEmpty {
                alertForSymbol()
            }
        }
    }

//MARK: Text Field Delegate
extension AddAccount : UITextFieldDelegate {
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailLabel {
            self.emailLabel.resignFirstResponder()
        }
        else if textField == passwordLabel {
            self.passwordLabel.resignFirstResponder()
        }
        return true
    }
    
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    return true
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    return true
        
    }
}

//MARK: Alerts
extension AddAccount {
    func alertForEmail() {
        let alert = UIAlertController(title: "Your Email Bar is Empty!", message: "Please, type your email", preferredStyle: .alert)
        let alertButtonOk = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButtonOk)
        self.present(alert, animated: true, completion: .none)
    }
    
    func alertForPassword() {
        let alert = UIAlertController(title: "Your Password Bar is Empty!", message: "Please, type your password", preferredStyle: .alert)
        let alertButtonOk = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButtonOk)
        self.present(alert, animated: true, completion: .none)
    }
    
    func alertForBoth() {
        let alert = UIAlertController(title: "Your Email and Password Bars are Empty!", message: "Please, type your email and password", preferredStyle: .alert)
        let alertButtonOk = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButtonOk)
        self.present(alert, animated: true, completion: .none)
    }
    func alertForSymbol() {
        let alert = UIAlertController(title: "It's not an email", message: "Please, type your email", preferredStyle: .alert)
        let alertButtonOk = UIAlertAction(title: "OK", style: .default, handler: .none)
        alert.addAction(alertButtonOk)
        self.present(alert, animated: true, completion: .none)
    }
    }

