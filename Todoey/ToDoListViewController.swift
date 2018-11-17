//
//  ViewController.swift
//  Todoey
//
//  Created by Alfred Kee on 16/11/2018.
//  Copyright © 2018 Alfred Kee. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["buy egg", "buy ticket", "milk"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // MARK:-  TableView DataSource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    
    // MARK:- TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row], (indexPath.row))
        

        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

            print(tableView.cellForRow(at: indexPath)!.accessoryType.rawValue)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    


}
