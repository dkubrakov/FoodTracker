//
//  ViewController.swift
//  FoodTracker
//
//  Created by Dmitriy Egorov on 20/05/16.
//  Copyright © 2016 Danil Kubrakov. All rights reserved.
//

import UIKit

// MARK: Properties

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    // MARK: Actions
    
    @IBAction func setDefaultLabelText(sender: AnyObject) {
//        mealNameLabel.text = "Default Text"
        nameTextField.text = "Default Text 123"
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }


}

