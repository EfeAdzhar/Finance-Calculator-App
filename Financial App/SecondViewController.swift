//  SecondViewController.swift
//  Financial App
//  Created by Efe on 23.11.2021.
//

import UIKit

class SecondViewController: UIViewController {
    let account = UIButton()
    let transactions = UIButton()
    let categories = UIButton()
    //Return to View Controller
    let viewOneButton = UIButton()
    var text = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        accountButton()
        transactionsButton()
        categoriesButton()
        returnButton()
//        self.account.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
//        self.transactions.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
//        self.categories.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        self.viewOneButton.addTarget(self, action: #selector(returnToViewController(sender:)), for: .touchUpInside)
    }
    
    func accountButton() {
        self.account.frame = CGRect(x: 115, y: 200, width: 200, height: 100)
        self.account.setTitle("Account", for: .normal)
        self.account.tintColor = .orange
        self.account.backgroundColor = .systemRed
        self.view.addSubview(account)
}
    func transactionsButton() {
        self.transactions.frame = CGRect(x: 115, y: 400, width: 200, height: 100)
        self.transactions.setTitle("Transactions", for: .normal)
        self.transactions.tintColor = .red
        self.transactions.backgroundColor = .systemPink
        self.view.addSubview(transactions)
    }
    func categoriesButton() {
        self.categories.frame = CGRect(x: 115, y: 600, width: 200, height: 100)
        self.categories.setTitle("Categories", for: .normal)
        self.categories.tintColor = .red
        self.categories.backgroundColor = .systemBlue
        self.view.addSubview(categories)
    }
    func returnButton() {
        self.viewOneButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        self.viewOneButton.setTitle("<=", for: .normal)
        self.viewOneButton.tintColor = .orange
        self.viewOneButton.backgroundColor = .systemRed
        self.view.addSubview(viewOneButton)
        
    }
    
    @objc func returnToViewController(sender : UIButton) {
        if sender == self.viewOneButton {
            self.dismiss(animated: true, completion: .none)
        }
    }
}
