//
//  AddTaskViewController.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 17/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    var taskDelegate: AddTaskDelegate?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var dueDateSwitch: UISwitch!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.text = "dit me"
    }
    
    @IBAction func addTaskButton(_ sender: Any) {
        if titleTextField.text != "" && descriptionTextField.text != "" {
            let title = titleTextField.text!
            let description = descriptionTextField.text!
            let task = Task(title: title, taskDescription: description)
            
            if dueDateSwitch.isOn {
                let dueDate = dueDatePicker.date
                task.dueDate = dueDate as NSDate
            }
            
            taskDelegate!.addTask(newTask: task)
            navigationController?.popViewController(animated: true)
        }
        
        var errorMsg = "Please ensure all fields are filled:\n"
        if titleTextField.text == "" {
            errorMsg += "- Must provide a task title\n"
        }
        if descriptionTextField.text == "" {
            errorMsg += "- Must provide a task description"
        }
        
        displayMessage(title: "Not all fields filled", message: errorMsg)
    }

    func displayMessage(title: String, message: String) {
        // Setup an alert to show user details about the Person
        // UIAlertController manages an alert instance
        let alertController = UIAlertController(title: title, message: message,
                                                preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style:
            UIAlertAction.Style.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
}
