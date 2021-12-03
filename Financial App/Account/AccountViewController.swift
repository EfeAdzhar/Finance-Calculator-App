//
//  AccountViewController.swift
//  Financial App
//
//  Created by Efe on 29.11.2021.
//

import UIKit

class AccountViewController: UIViewController {
    //MARK: Variables
    let choose = UIButton()
    let add = UIButton()
    
    //MARK: View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
        chooseButton()
        addButton()
    }
    //MARK: Functions
    func chooseButton() {
        self.choose.frame = CGRect(x: 115, y: 300, width: 200, height: 100)
        self.choose.setTitle("Choose", for: .normal)
        self.choose.tintColor = .red
        self.choose.backgroundColor = .systemPink
        self.view.addSubview(choose)
    }
    func  addButton() {
        self.add.frame = CGRect(x: 115, y: 500, width: 200, height: 100)
        self.add.setTitle("Add", for: .normal)
        self.add.tintColor = .white
        self.add.backgroundColor = .systemBlue
        self.view.addSubview(add)
    }
    
}
