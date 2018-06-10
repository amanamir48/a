//
//  UIFormatting.swift
//  AMS
//
//  Created by Rishabh Raj on 01/06/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import Foundation
import UIKit

class UIFormatting {
    
    static func textFieldFormatting(textField: UITextField, textField2: UITextField, textField3: UITextField, textField4: UITextField){
        
        textField.backgroundColor = UIColor.clear
        textField.tintColor = UIColor.black
        textField.textColor = UIColor.black
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 0, alpha: 0.4)])
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 29, width: UIScreen.main.bounds.width / 1.7 , height: 0.6)
        bottomLayer.backgroundColor = UIColor(displayP3Red: 50/255, green: 50/255, blue: 25/255, alpha: 1).cgColor
        textField.layer.addSublayer(bottomLayer)
        
        textField2.backgroundColor = UIColor.clear
        textField2.tintColor = UIColor.black
        textField2.textColor = UIColor.black
        textField2.attributedPlaceholder = NSAttributedString(string: textField2.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 0, alpha: 0.4)])
        let bottomLayer2 = CALayer()
        bottomLayer2.frame = CGRect(x: 0, y: 29, width: UIScreen.main.bounds.width / 1.7, height: 0.6)
        bottomLayer2.backgroundColor = UIColor(displayP3Red: 50/255, green: 50/255, blue: 25/255, alpha: 1).cgColor
        textField2.layer.addSublayer(bottomLayer2)
        
        textField3.backgroundColor = UIColor.clear
        textField3.tintColor = UIColor.black
        textField3.textColor = UIColor.black
        textField3.attributedPlaceholder = NSAttributedString(string: textField3.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 0, alpha: 0.4)])
        let bottomLayer3 = CALayer()
        bottomLayer3.frame = CGRect(x: 0, y: 29, width: UIScreen.main.bounds.width / 1.7, height: 0.6)
        bottomLayer3.backgroundColor = UIColor(displayP3Red: 50/255, green: 50/255, blue: 25/255, alpha: 1).cgColor
        textField3.layer.addSublayer(bottomLayer3)
        
        textField4.backgroundColor = UIColor.clear
        textField4.tintColor = UIColor.black
        textField4.textColor = UIColor.black
        textField4.attributedPlaceholder = NSAttributedString(string: textField4.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 0, alpha: 0.4)])
        let bottomLayer4 = CALayer()
        bottomLayer4.frame = CGRect(x: 0, y: 29, width: UIScreen.main.bounds.width / 1.7, height: 0.6)
        bottomLayer4.backgroundColor = UIColor(displayP3Red: 50/255, green: 50/255, blue: 25/255, alpha: 1).cgColor
        textField4.layer.addSublayer(bottomLayer4)
    }
    static func buttonFormatting(button: UIButton){
        
        button.layer.cornerRadius = 10
        
        button.layer.shadowColor = UIColor.gray.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        button.layer.shadowRadius = 4.0
        button.layer.shadowOpacity = 1.0
        button.layer.masksToBounds = false
        button.layer.shadowPath = UIBezierPath(roundedRect: button.bounds, cornerRadius: button.layer.cornerRadius).cgPath
        
        button.backgroundColor = UIColor.lightGray
        
    }
    
    
    
    static func textFieldFormatting_2(textField: UITextField){
        
        textField.backgroundColor = UIColor.clear
        textField.tintColor = UIColor.black
        textField.textColor = UIColor.black
        textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedStringKey.foregroundColor: UIColor(white: 0, alpha: 0.4)])
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: 29, width: 0.8 * (UIScreen.main.bounds.width), height: 0.6)
        bottomLayer.backgroundColor = UIColor(displayP3Red: 50/255, green: 50/255, blue: 25/255, alpha: 1).cgColor
        textField.layer.addSublayer(bottomLayer)
        
        
    }
}
