//
//  Task.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 14/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class Task: NSObject {
    
    var title: String
    var taskDescription: String
    var dueDate: NSDate?
    var hasBeenCompleted: Bool = false
    
    init(title: String, taskDescription: String, dueDate: NSDate? = nil) {
        self.title = title
        self.taskDescription = taskDescription
        self.dueDate = dueDate
    }
    
    func getTaskSummary() -> String {
        var taskSummary: String = "Task Title is \(self.title). \(self.taskDescription)."
        if let dueDate: NSDate = self.dueDate {
            taskSummary += "The task is due on \(dueDate.description)."
        }
        taskSummary += (self.hasBeenCompleted ? "The task has been completed." : "The Task is not completed.")
        return taskSummary
    }	
}
