//
//  ToDoTableViewController.swift
//  toDoListProject
//
//  Created by Apple on 7/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo] = []
     var previousVC = ToDoTableViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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
    
    func createToDos() -> [ToDo] {
        
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        // important is set to false by default
        
        return [swift, dog]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? ToDoTableViewController {
            addVC.previousVC = self
        }
        if let completeVC = segue.destination as? CompleteToDoTableViewController {
            if let toDo = sender as? ToDo {
                completeVC.selectedToDo = toDo
                completeVC.previousVC = self
            }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
             let toDo = toDos[indexPath.row]
            
            performSegue(withIdentifier: "moveToComplete", sender: toDo)
        }
    }
}
}
