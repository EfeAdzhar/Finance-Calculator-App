//  SecondViewController.swift
//  Financial App
//  Created by Efe on 23.11.2021.
import UIKit

class SecondViewController: UIViewController {
    //MARK: Variables
    let account = UIButton()
    let transactions = UIButton()
    let categories = UIButton()
    //Return to View Controller
    let viewOneButton = UIButton()
    var text = UITextView()
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        createBackGroundColor()
        //MARK: Function Initialization
        accountButton()
        transactionsButton()
        categoriesButton()
//        returnButton()
        //MARK: Targets
        self.account.addTarget(self, action: #selector(accountButtonPressed(sender:)), for: .touchUpInside)
        self.transactions.addTarget(self, action: #selector(transactionsButtonPressed(sender:)), for: .touchUpInside)
        self.categories.addTarget(self, action: #selector(categoriesButtonPressed(sender:)), for: .touchUpInside)
//        self.viewOneButton.addTarget(self, action: #selector(returnToViewController(sender:)), for: .touchUpInside)
    }
    //MARK: BackGround Color
    func createBackGroundColor() {
        let layer = CAGradientLayer()
        layer.frame = self.view.bounds
        layer.colors = [UIColor.systemPink.cgColor, UIColor.systemYellow.cgColor]
        self.view.layer.addSublayer(layer)
    }
    //MARK: Functions
    func accountButton() {
        self.account.frame = CGRect(x: 115, y: 200, width: 200, height: 100)
        self.account.setTitle("Account", for: .normal)
        self.account.tintColor = .systemOrange
        self.account.backgroundColor = .systemRed
        self.account.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.account.layer.cornerRadius = 15
        self.account.layer.borderWidth = 3
        self.account.layer.borderColor = UIColor.black.cgColor
        self.view.addSubview(account)
}
    func transactionsButton() {
        self.transactions.frame = CGRect(x: 115, y: 400, width: 200, height: 100)
        self.transactions.setTitle("Transactions", for: .normal)
        self.transactions.tintColor = .systemRed
        self.transactions.backgroundColor = .systemPink
        self.transactions.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.transactions.layer.cornerRadius = 15
        self.transactions.layer.borderWidth = 3
        self.transactions.layer.borderColor = UIColor.black.cgColor
        self.view.addSubview(transactions)
    }
    func categoriesButton() {
        self.categories.frame = CGRect(x: 115, y: 600, width: 200, height: 100)
        self.categories.setTitle("Categories", for: .normal)
        self.categories.tintColor = .red
        self.categories.backgroundColor = .systemBlue
        self.categories.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.categories.layer.cornerRadius = 15
        self.categories.layer.borderWidth = 3
        self.categories.layer.borderColor = UIColor.black.cgColor
        self.view.addSubview(categories)
    }
//    func returnButton() {
//        self.viewOneButton.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//        self.viewOneButton.setTitle("", for: .normal)
//        self.viewOneButton.tintColor = .orange
//        self.viewOneButton.backgroundColor = .systemRed
//        self.view.addSubview(viewOneButton)
//    }
    //MARK: Button Actions
//    @objc func returnToViewController(sender : UIButton) {
//        if sender == self.viewOneButton {
//            self.dismiss(animated: true, completion: .none)
//        }
//    }
    @objc func accountButtonPressed(sender : UIButton) {
        if sender == self.account {
            self.show(AccountViewController(), sender: .none)
        }
    }
    @objc func transactionsButtonPressed(sender : UIButton) {
        if sender == self.transactions {
            self.show(TransactionViewController(), sender: .none)
        }
    }
    @objc func categoriesButtonPressed(sender : UIButton) {
        if sender == self.categories {
            self.show(CategoriesViewController(), sender: .none)
        }
    }
    
}
