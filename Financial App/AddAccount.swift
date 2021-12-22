//  AddAccount.swift
//  Financial App
//  Created by Efe on 29.11.2021.

import UIKit
//MARK: Variables
class AddAccount: UIViewController {
    let accountButton = UIButton()
    let emailLabel = UILabel()
    let passwordLabel = UILabel()

    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        //Background Color of View
        self.view.backgroundColor = .systemPink
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
    
    //MARK: Creating Text Fields
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
        textField.isSecureTextEntry = true
        textField.backgroundColor = .systemBlue
        self.view.addSubview(textField)
    }
    
    //MARK: Creating Add Button
    func addAccountButton() {
        self.accountButton.frame = CGRect(x: 135, y: 500, width: 150, height: 60)
        self.accountButton.setTitle("Add", for: .normal)
        self.accountButton.backgroundColor = .systemBlue
        self.view.addSubview(self.accountButton)
    }
    
    //MARK: Labels
    func labelEmail() {
        emailLabel.text = "Email"
        emailLabel.frame = CGRect(x: 50, y: 250, width: 100, height: 30)
        self.view.addSubview(emailLabel)
    }
    
    func labelPassword() {
        passwordLabel.text = "Password"
        passwordLabel.frame = CGRect(x: 50, y: 350, width: 100, height: 30)
        self.view.addSubview(passwordLabel)
    }
    
    //MARK: Add Account Button Pressed.
    @objc func addAccountButtonPressed(sender : UIButton) {
        //Not working Properly :(
        if ((self.emailLabel.text?.isEmpty) != nil) {
            alertForEmail()
            print("alertForEmail")
        }
        if ((self.passwordLabel.text?.isEmpty) != nil) {
            alertForPassword()
            print("alertForPassword")
        }
        if ((self.emailLabel.text?.isEmpty) != nil) && ((self.passwordLabel.text?.isEmpty) != nil) {
            alertForBoth()
            print("alertForBoth")
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
        if textField == passwordLabel {
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

   
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    return true
        
    }

    func textFieldDidChangeSelection(_ textField: UITextField) {
        
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
}
