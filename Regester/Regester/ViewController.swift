//
//  ViewController.swift
//  Regester
//
//  Created by Horizon on 06.07.2020.
//  Copyright © 2020 Horizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LabelWelcome: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


  
        

    
    @IBAction func Register(_ sender: UIButton) {
        let alertRegister = UIAlertController(title: "Регистрация", message: "Введите ваши данние", preferredStyle: .alert)
        let buttonRegister = UIAlertAction(title: "OK", style: .default, handler: nil)
        let buttonCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        alertRegister.addAction(buttonRegister)
        alertRegister.addAction(buttonCancel)
        present(alertRegister, animated:  true, completion: nil)
        
        alertRegister.addTextField { (text) in
            text.placeholder = "Ваше имя"            }
        alertRegister.addTextField { (text) in
            text.placeholder = "Введите ваш Email"   }
        alertRegister.addTextField { (text) in
            text.isSecureTextEntry = true
            text.placeholder = "Введите ваш пароль"  }
        alertRegister.addTextField { (text) in
            text.isSecureTextEntry = true
            text.placeholder = "Повторите ваш пароль еще раз" }
        
    }
    
    
    @IBAction func LoginIn(_ sender: UIButton) {
        let alertLogin = UIAlertController(title: "Вход", message: "Введите ваши данние", preferredStyle: .alert)
        let buttonLogin = UIAlertAction (title: "OK", style: .default) { (action) in
            let text = alertLogin.textFields?.first
            self.LabelWelcome.text! += ("Добро пожаловать" + " ") + (text?.text!)!
        }
        let buttonCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertLogin.addAction(buttonCancel)
        alertLogin.addAction(buttonLogin)
        present(alertLogin, animated: true, completion: nil)
        
        alertLogin.addTextField { (text) in
            text.placeholder = "Ваш имя" }
        alertLogin.addTextField { (text) in
            text.isSecureTextEntry = true
            text.placeholder = "Введите ваш пароль"
        }
        LabelWelcome.text = "Welcome"
        LabelWelcome.text = alertLogin.textFields?.first?.text
       
    }
    
    
    
    
}

