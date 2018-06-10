//
//  CoachingViewController.swift
//  AMS
//
//  Created by Rishabh Raj on 01/06/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit

class CoachingViewController: UIViewController {

    @IBOutlet weak var proceedButton: UIButton!
    @IBOutlet weak var coachingTextField: UITextField!
    @IBOutlet weak var branchTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIFormatting.buttonFormatting(button: proceedButton)

        // Do any additional setup after loading the view.
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func proceedButtonPressed(_ sender: UIButton) {
    }
    
}
