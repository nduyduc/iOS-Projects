//
//  AddTaskDelegate.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 17/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import Foundation

protocol AddTaskDelegate {
    func addTask(newTask: Task) -> Bool
}
