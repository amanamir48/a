//
//  ViewController.swift
//  AMS
//
//  Created by Rishabh Raj on 31/05/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIFormatting.textFieldFormatting_2(textField: mobileNumberTextField)
        UIFormatting.buttonFormatting(button: loginButton)
        UIFormatting.buttonFormatting(button: registerButton)
        registerButton.backgroundColor = UIColor.black
        loginButton.isEnabled = false
        handleTextField()
      
    }

    func handleTextField(){
        
        mobileNumberTextField.addTarget(self, action: #selector(ViewController.textFieldDidChange), for: UIControlEvents.editingChanged)
        
    }
    @objc func textFieldDidChange(){
        guard let mobNumber = mobileNumberTextField.text, !mobNumber.isEmpty else {
            loginButton.isEnabled = false
            return
        }
        loginButton.backgroundColor = UIColor.black
        loginButton.isEnabled = true
    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(nextvc, animated: true, completion: nil)
        
    }
    

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        
        let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "RegistrationHomeViewController") as! RegistrationHomeViewController
        self.present(nextvc, animated: true, completion: nil)
        
    }
    

}

