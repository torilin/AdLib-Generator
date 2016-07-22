//
//  ViewController.swift
//  AdLib Generator
//
//  Created by torilin on 7/21/16.
//  Copyright © 2016 torilin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    }


    @IBAction func sliderValueChanged(sender: AnyObject) {
    }
    @IBAction func createButtonPressed(sender: AnyObject) {
    }

}

