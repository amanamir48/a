//
//  CollegeViewController.swift
//  AMS
//
//  Created by Rishabh Raj on 01/06/18.
//  Copyright © 2018 Rishabh Raj. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class CollegeViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var proceedButtonOutlet: UIButton!
    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var courseTextField: UITextField!
    @IBOutlet weak var semesterTextField: UITextField!
    @IBOutlet weak var rollNumberTextField: UITextField!
    
    class CollegeDataModel {
        var institute : String = ""
    }
    
    var college  = [""]
    let course = ["branch"]
    let semester = ["1","2","3","4","5","6","7","8","9","10"]
    
    let baseURL = "https://www.attenger.app/ams/"
    let collegeURL = "College.php"
    let testURL = "https://www.attenger.app/ams/College.php"
    
    var currentTextFieldTag : Int = 10
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFormatting.buttonFormatting(button: proceedButtonOutlet)
        UIFormatting.textFieldFormatting(textField: collegeTextField, textField2: courseTextField, textField3: semesterTextField, textField4: rollNumberTextField)
        
        
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        collegeTextField.tag = 10
        courseTextField.tag = 20
        semesterTextField.tag = 30
        
        collegeTextField.delegate = self
        courseTextField.delegate = self
        semesterTextField.delegate = self
        
        collegeTextField.inputView = pickerView
//        collegeTextField.text = college[0]
        courseTextField.inputView = pickerView
//        courseTextField.text = course[0]
       semesterTextField.inputView = pickerView

        getData(url: testURL)
       
        
       
    }
    
    func getData(url: String) {
        Alamofire.request(url, method: .post).responseJSON { response in
            if response.result.isSuccess {
                print("Gotcha!")
                
                let collegeJSON : JSON = JSON(response.result.value!)
                print(collegeJSON)
                
                self.updatePickerView(json: collegeJSON)
            }
            else {
                print("Error \(String(describing: response.result.error))")
            }
        }
        
    }
    
    func updatePickerView(json: JSON) {
        
        if let result = json["colleges"].array {
            print(result)
           
         }
        else {
            print("Some error")
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if currentTextFieldTag == 10 {
        return college.count
        }
        else if currentTextFieldTag == 20 {
            return course.count
        }
        else {
            return semester.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if currentTextFieldTag == 10 {
            return college[row]}
        else if currentTextFieldTag == 20 {
            return course[row]
        }
        else {
            return semester[row]
            
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if currentTextFieldTag == 10{
        
        collegeTextField.text = college[row]
            collegeTextField.resignFirstResponder()}
        else if currentTextFieldTag == 20{
            courseTextField.text = course[row]
            courseTextField.resignFirstResponder()
        }
        else {
            semesterTextField.text = semester[row]
            semesterTextField.resignFirstResponder()
        }
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField.tag == 10 {
            currentTextFieldTag = 10
        }
        else if textField.tag == 20 {
            currentTextFieldTag = 20
        }
        else {
            currentTextFieldTag = 30
        }
        pickerView.reloadAllComponents()
        return true
    }
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func proceedButtonPressed(_ sender: UIButton) {
    }
    
    
}
