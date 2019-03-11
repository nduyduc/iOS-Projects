//
//  ViewController.swift
//  Week2
//
//  Created by Duy Nguyen on 11/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var houseSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
        ageTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createHouseSegue" {
            let destination = segue.destination as! HouseViewController
            
            let name = nameTextField.text!
            
            let house = houseSegmentedControl.titleForSegment(at: houseSegmentedControl.selectedSegmentIndex)!
            
            var age: Int = 0
            
            if let enteredAge = Int(ageTextField.text!) {
                age = enteredAge
            }
            
            let newPerson = Person(name: name, house: house, age: age)
            
            destination.person = newPerson
            
        }
    }

}

