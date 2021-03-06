//
//  ViewController.swift
//  AdLib Generator
//
//  Created by torilin on 7/21/16.
//  Copyright © 2016 torilin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var textFields: [UITextField]!
    
    @IBOutlet weak var pastTenseVerbTextField: UITextField!
    @IBOutlet weak var singularNounTextField: UITextField!
    @IBOutlet weak var pluralNounTextField: UITextField!
    @IBOutlet weak var enterPhraseTextField: UITextField!
    
    @IBOutlet weak var locationSegmentControl: UISegmentedControl!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var numberSlider: UISlider!
    
    @IBOutlet weak var createAdLibs: UIButton!
    @IBOutlet weak var finishSentence: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFields = [pastTenseVerbTextField, singularNounTextField, pluralNounTextField, enterPhraseTextField]
        
    }
    
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        
        sliderLabel.text = "\(Int(numberSlider.value))"
        
    }
    @IBAction func createButtonPressed(sender: AnyObject) {
        
        var location = ""
        
        if locationSegmentControl.selectedSegmentIndex == 0 {
            location = "mall"
        } else if locationSegmentControl.selectedSegmentIndex == 1 {
            location = "library"
        } else {
            location = "restaurant"
        }
        
        finishSentence.text = "One evening, at the  \(location) a \(singularNounTextField.text!) \(sliderLabel.text!) \(pluralNounTextField.text!) and said, \(enterPhraseTextField.text!)"
        finishSentence.backgroundColor = UIColor.grayColor()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        let arrayOfTextFields = textFields as NSArray
        let arrayIndex = arrayOfTextFields.indexOfObject(textFields)
        
        if arrayIndex < arrayOfTextFields.count - 1 {
            let newTextField = arrayOfTextFields[arrayIndex + 1] as! UITextField
            newTextField.becomeFirstResponder()
            let doneTextField = arrayOfTextFields[arrayIndex] as! UITextField
            doneTextField.backgroundColor = UIColor.lightGrayColor()
        } else {
            textField.resignFirstResponder()
            textField.backgroundColor = UIColor.lightGrayColor()
        }
        return true
    }
}

