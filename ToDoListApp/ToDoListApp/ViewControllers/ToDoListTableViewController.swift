//
//  ToDoListTableViewController.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 17/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController, UISearchResultsUpdating, AddTaskDelegate {
    
    let CELL_TODO = "toDoTaskCell"
    let SEGUE_ADD = "addTaskSegue"
    
    var toDoTasks: [Task] = []
    var filteredTasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createDefaultTasks()
        filteredTasks = toDoTasks
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Task"
        navigationItem.searchController = searchController
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if let searchText = searchController.searchBar.text?.lowercased(), searchText.count > 0 {
            filteredTasks = toDoTasks.filter({
                (task: Task) -> Bool in return task.title.lowercased().contains(searchText)
            })
        } else {
            filteredTasks = toDoTasks
        }
        tableView.reloadData()
    }
    
    func addTask(newTask: Task) -> Bool {
        toDoTasks.append(newTask)
        filteredTasks.append(newTask)
        
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: filteredTasks.count - 1, section: 0)], with: .automatic)
        tableView.endUpdates()
        
        return true
    }

    func createDefaultTasks() {
        toDoTasks.append(Task(title: "dit me", taskDescription: "dit me may"))
        toDoTasks.append(Task(title: "du ma", taskDescription: "du ma may"))
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredTasks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let taskCell = tableView.dequeueReusableCell(withIdentifier: CELL_TODO, for: indexPath) as! ToDoTaskTableViewCell
        let task = filteredTasks[indexPath.row]
        
        taskCell.nameLabel.text = task.title
        if let dueDate = task.dueDate {
            taskCell.dueDateLabel.text = dueDate.description
        } else {
            taskCell.dueDateLabel.text = "This task has no due date"
        }

        return taskCell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SEGUE_ADD {
            let destination = segue.destination as! AddTaskViewController
            destination.taskDelegate = self
        }
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
