//
//  ToDoTableViewController.swift
//  toDoListProject
//
//  Created by Apple on 7/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [toDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }
    
    func createToDos() -> [toDo] {
        
        let swift = toDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = toDo()
        dog.name = "Walk the Dog"
        // important is set to false by default
        
        return [swift, dog]
    }

}
