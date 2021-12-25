//
//  ViewController.swift
//  5
//
//  Created by 中野翔太 on 2021/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
   

    @IBAction private func calculate(_ sender: Any) {
      value()

    
     
    }
    
   private func value() {

        let firstNum = Float(firstTextField.text ?? "") ?? 0
        let secondNum = Float(secondTextField.text ?? "") ?? 0
       getValue(num1: firstNum, num2: secondNum)
       
    }
    
    private func getValue(num1: Float, num2: Float) {
        if num1 == 0 {
            let title = "課題５"
            let message = "割られる数を入力して下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)

        } else if  num2 == 0 {
            let title = "課題５"
            let message = "割る数を入力して下さい"
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
        resultLabel.text = String(num1 / num2)
    }

   
   
}


