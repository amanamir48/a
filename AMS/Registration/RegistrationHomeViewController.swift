//
//  RegistrationHomeViewController.swift
//  AMS
//
//  Created by Rishabh Raj on 01/06/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit

class RegistrationHomeViewController: UIViewController {
    @IBOutlet weak var collegeStudentButtonOutlet: UIButton!
    @IBOutlet weak var companyEmployeeOutlet: UIButton!
    @IBOutlet weak var coachingStudentButtonOutlet: UIButton!
    @IBOutlet weak var proceedButtonOutlet: UIButton!
    @IBOutlet weak var selectUSerTypeOutlet: UIButton!
    @IBOutlet var userItemCollection: [UIButton]!
    
    var myIndex : String = ""
    var indexVal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        UIFormatting.buttonFormatting(button: collegeStudentButtonOutlet)
//        UIFormatting.buttonFormatting(button: companyEmployeeOutlet)
//        UIFormatting.buttonFormatting(button: coachingStudentButtonOutlet)
        UIFormatting.buttonFormatting(button: proceedButtonOutlet)
        selectUSerTypeOutlet.layer.cornerRadius = selectUSerTypeOutlet.frame.height / 2.0
        userItemCollection.forEach { (userbtn) in
            userbtn.layer.cornerRadius = userbtn.frame.height / 2.0
            userbtn.isHidden = true
            proceedButtonOutlet.isEnabled = false
            
        }
    }
    @IBAction func userTypeSelectionPressed(_ sender: Any) {
        userItemCollection.forEach { (userbtn) in
            UIView.animate(withDuration: 0.2, animations: {
                 userbtn.isHidden = !userbtn.isHidden
                self.view.layoutIfNeeded()
            })
            indexVal = 0
            if indexVal == 0{
                selectUSerTypeOutlet.setTitle("Select Your User Type", for: .normal)
                
                proceedButtonOutlet.backgroundColor = UIColor.lightGray
                proceedButtonOutlet.isEnabled = false
                
            }
        }
        
        
    }
    
    @IBAction func userButtonPressed(_ sender: UIButton) {
        
        if let btnLabel = sender.titleLabel?.text{
            print(btnLabel)
            myIndex = btnLabel
            selectUSerTypeOutlet.setTitle(btnLabel, for: .normal)
            userItemCollection.forEach { (userbtn) in
                UIView.animate(withDuration: 0.2, animations: {
                    userbtn.isHidden = !userbtn.isHidden
                    self.view.layoutIfNeeded()
                })
                indexVal = 1
                 proceedButtonOutlet.isEnabled = true
                 proceedButtonOutlet.backgroundColor = UIColor.black
              
            }
        }
        
    }
    @IBAction func proceedButtonPressed(_ sender: UIButton) {
        if myIndex == "College Student" {
            let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "CollegeViewController") as! CollegeViewController
            self.present(nextvc, animated: true, completion: nil)
        }
        else if myIndex == "Coaching Student"
        {
            let nextvc = self.storyboard?.instantiateViewController(withIdentifier: "CoachingViewController") as! CoachingViewController
            self.present(nextvc, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
