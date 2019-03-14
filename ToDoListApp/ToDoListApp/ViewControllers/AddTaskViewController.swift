//
//  AddTaskViewController.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 14/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    @IBAction func doneBarButton(_ sender: Any) {
        
        if (titleTextField.text != "") {
            list.append(titleTextField.text!)
            titleTextField.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleTextField.delegate = self
        descriptionTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
