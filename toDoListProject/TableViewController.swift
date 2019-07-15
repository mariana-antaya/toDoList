//
//  TableViewController.swift
//  toDoListProject
//
//  Created by Apple on 7/12/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
       

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

class TableViewController: UITableViewController {
    var previousVC = ToDoTableViewController()
    
        @IBOutlet weak var titleTextField: UITextField!
        @IBOutlet weak var importantSwitch: UISwitch!
    
        override func viewDidLoad() {
            super.viewDidLoad()
    
        }
    
@IBAction func addTapped(_ sender: Any)
{
    let toDo = ToDo()
    
    if let titleText = titleTextField.text {
        toDo.name = titleText
        toDo.important = importantSwitch.isOn
    }
    previousVC.toDos.append(toDo)
    previousVC.tableView.reloadData()
    navigationController?.popViewController(animated: true)
}
}

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

//    override func tableView(_tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return toDos.count
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
 

}
}

 */

}
