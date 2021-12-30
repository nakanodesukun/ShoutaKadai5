//
//  ViewController.swift
//  5
//
//  Created by 中野翔太 on 2021/12/22.
//

import UIKit
private enum Message {
    static let dividend = "割られる数を入力して下さい"
    static let divisor =  "割る数を入力して下さい"
    static let nonZero = "割る数には0は代入しないでください"
}

class ViewController: UIViewController {
    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    
    @IBAction private func calculate(_ sender: Any) {
        guard let firstNum = firstTextField.text.flatMap({Float($0)}) else {
            alertMessage(message: Message.dividend)
            return }
        guard let secondNum = secondTextField.text.flatMap({Float($0)}) else {
            alertMessage(message: Message.divisor)
            return  }
        guard secondNum != 0 else {
            alertMessage(message: Message.nonZero)
            return
        }
        resultLabel.text = String(firstNum / secondNum)
    }
    
    private func alertMessage(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
}
