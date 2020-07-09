//
//  ViewController.swift
//  Alert2
//
//  Created by Horizon on 05.07.2020.
//  Copyright © 2020 Horizon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Actionsheet(_ sender: Any) {
        let alert1 = UIAlertController(title: "Вопрос", message: "Кто не получал золотой мяч?", preferredStyle: .alert)
        let button1 = UIAlertAction(title: "Messi", style: .default) { (button1) in
            let text = alert1.textFields?.first?.text
            print(text ?? "nil text")
        }
        
        alert1.addTextField { (textfield) in
            textfield.placeholder = "Ваш вариант" }
        alert1.addAction(button1)
        present(alert1, animated: true, completion: nil)
    }
    
    @IBAction func Alert(_ sender: Any) {
        let alert2 = UIAlertController(title: "Внимание", message: "Сейчас будет показан алерт", preferredStyle: .alert)
        let button2 = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert2.addAction(button2)
        self.present(alert2, animated: true, completion: nil)
    }
    
}

  
