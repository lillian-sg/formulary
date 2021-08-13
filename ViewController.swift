//
//  ViewController.swift
//  formulario
//
//  Created by Lilian on 09/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func isValidPhone() -> Bool {
        if phoneTextField.text?.count == 9 ||
            phoneTextField.text?.count == 11 {
            return true
        }
        return false
    }
    
    
    func isValidCPF() -> Bool {
        if cpfTextField.text == "" {
            return false
        }
        if cpfTextField.text?.count != 11 {
            return false
        }
        let numericCPF = Int(cpfTextField.text!)
        if numericCPF == nil {
            return false
        }
        return true
    }
    
    func isValidName() -> Bool {
        if nameTextField.text == "" {
            return false
        }
        return true
        
    }
    
    @IBAction func okButton(_ sender: Any) {
        
        if !isValidCPF() {
            cpfTextField.layer.borderWidth = 1
            cpfTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            cpfTextField.layer.borderWidth = 1
            cpfTextField.layer.borderColor = UIColor.clear.cgColor
        }
        
        if !isValidName() {
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor.clear.cgColor
        }
        
        if !isValidPhone() {
            phoneTextField.layer.borderWidth = 1
            phoneTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            phoneTextField.layer.borderWidth = 1
            phoneTextField.layer.borderColor = UIColor.clear.cgColor
        }
        
//        if !emailTextField() {
//            emailTextField.layer.borderWidth = 1
//            emailTextField.layer.borderColor = UIColor.red.cgColor
//        } else {
//
//        }
    }

}

