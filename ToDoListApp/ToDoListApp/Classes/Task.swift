//
//  Task.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 14/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class Task: NSObject {
    
    var taskTitle: String
    var taskDescription: String
    var dueDate: NSDate?
    var hasBeenCompleted: Bool = false
    
    init(taskTitle: String, taskDescription: String) {
        self.taskTitle = taskTitle
        self.taskDescription = taskDescription
    }
    
    func getTaskSummary() -> String {
        var taskSummary: String = "Task Title is \(self.taskTitle). \(self.taskDescription)."
        if let dueDate: NSDate = self.dueDate {
            taskSummary += "The task is due on \(dueDate.description)."
        }
        taskSummary += (self.hasBeenCompleted ? "The task has been completed." : "The Task is not completed.")
        return taskSummary
    }	
}
