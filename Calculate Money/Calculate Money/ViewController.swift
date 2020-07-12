//
//  ViewController.swift
//  Calculate Money
//
//  Created by Horizon on 11.07.2020.
//  Copyright © 2020 Horizon. All rights reserved.
//

import UIKit

// Создание UI  елементов
let switchRus = UISwitch()
let switchEuro = UISwitch()
let switchtest = UISwitch()
let labeltest = UILabel()
let textfieldtest = UITextField()
let labeldIn = UILabel()
let background = UIImageView(image: #imageLiteral(resourceName: "background.jpg"))
let textUSA = UILabel()
let textEuro = UILabel()
let textRus = UILabel()


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    // Backgroun View
        background.frame = view.frame
        view.addSubview(background)
        
        
    // TextField View
        textfieldtest.frame = CGRect(x: 140, y: 100, width: 100, height: 50)
        textfieldtest.backgroundColor = UIColor.white
        view.addSubview(textfieldtest)
        
    // Label  IN Введите значение
        labeldIn.frame = CGRect(x: 50, y: 60, width: 300, height: 30)
        labeldIn.text =  "Введите значение для конвертации"
        labeldIn.backgroundColor = UIColor.white
        view.addSubview(labeldIn)
    
    // Label View
        labeltest.frame = CGRect(x: 15, y: 420, width: 340, height: 50)
        
        labeltest.backgroundColor = UIColor.white
        view.addSubview(labeltest)
        
   
        
        
    // Test Switch Create
        //Switch USA
        switchtest.frame = CGRect(x: 280, y:175, width: 0, height: 0)
        switchtest.onTintColor = UIColor.white
        switchtest.thumbTintColor = UIColor.black
        view.addSubview(switchtest)
        switchtest.addTarget(self, action: #selector(switc(param:)), for: .valueChanged)
        
        // Switch Euro
        switchEuro.frame = CGRect(x: 280, y: 235, width: 0, height: 0)
        switchEuro.onTintColor = UIColor.white
        switchEuro.thumbTintColor = UIColor.black
        view.addSubview(switchEuro)
        switchEuro.addTarget(self, action: #selector(switc(param:)), for: .valueChanged)
        
        // Switch Rus
        switchRus.frame = CGRect(x: 280, y: 295, width: 0, height: 0)
        switchRus.onTintColor = UIColor.white
        switchRus.thumbTintColor = UIColor.black
        view.addSubview(switchRus)
        switchRus.addTarget(self, action: #selector(switc(param:)), for: .valueChanged)
       
   
    // Label UAS
        textUSA.text = "Конвертировать в доллары"
        textUSA.frame = CGRect(x: 20, y: 180, width: 250, height: 25)
        textUSA.backgroundColor = UIColor.white
        view.addSubview(textUSA)
        
    // Label Euro
        textEuro.text = "Конвертировать в Евро"
        textEuro.frame = CGRect(x: 20, y: 240, width: 250, height: 25)
        textEuro.backgroundColor = UIColor.white
        view.addSubview(textEuro)
    
    // Label Russ
        textRus.text = "Конвертировать в Рубль"
        textRus.frame = CGRect(x: 20, y: 300, width: 250, height: 25)
        textRus.backgroundColor = UIColor.white
        view.addSubview(textRus)
        
        
        
    }
    
    
    // Func Swich Target
    @objc func switc (param: UISwitch){
        if param == switchtest{
            if textfieldtest.text == "" {
                       labeltest.text = "Введите значение"
                   }  else  {
                        if param.isOn{
                               let myDouble = Double(textfieldtest.text!)
                            let value = round((myDouble! * 0.037)*1000)/1000
                            labeltest.text = String("\(textfieldtest.text!) гривен = \(value) доларов")
                           } else { labeltest.text = "Для конвертации перетащите ползунок" }
            }
        } else  { if  param == switchEuro {
              if textfieldtest.text == "" {
                           labeltest.text = "Введите значение"
                       } else { if param.isOn{
                                   let myDouble = Double(textfieldtest.text!)
                let value = round((myDouble! * 0.033)*1000)/1000
                
                labeltest.text = String("\(textfieldtest.text!) гривен =  \(value) евро")
                               } else { labeltest.text = "Для конвертации перетащите ползунок"
                               } } }
        };   do { if param == switchRus {
                if textfieldtest.text == "" { labeltest.text = "Введите значение" }
                else { if param.isOn{
                                   let mydouble = Double(textfieldtest.text!)
                    let value = round((mydouble! * 2.62)*1000)/1000
                    labeltest.text = String("\(textfieldtest.text!) гривен = \(value) рублей")
                               } else {
                                   labeltest.text = "Для конвертации перетащите ползунок"
                               }
                           }
            }
        }
    }
}

    

    // Функия для свича USA
  
    
    
    
    

