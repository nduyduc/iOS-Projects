//
//  ViewController.swift
//  ToDoListApp
//
//  Created by Duy Nguyen on 11/3/19.
//  Copyright © 2019 Duc Nguyen. All rights reserved.
//

import UIKit

var list = ["Buy Milk", "Run 5km", "Plant new plants"]

class ToDoListAppViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var taskTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            list.remove(at: indexPath.row)
            taskTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        taskTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()		
        // Do any additional setup after loading the view, typically from a nib.
    }


}

