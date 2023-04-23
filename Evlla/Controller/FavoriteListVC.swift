//
//  FavoriteListVC.swift
//  Evlla
//
//  Created by Dambar Bista on 4/10/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit
import CoreData

// MARK:- Global favoriteList

/* I am making favoriteList golbal variable so i could store and display
 user favorites quotes from both random and popular viewController
 */

var favoriteList: [NSManagedObject] = []
 
class FavoriteListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    // MARK:- IBOulets and Properties
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK:- viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
       showEmptyMessage()
    }
    
   
    // MARK:- Done Button

    @IBAction func donePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK:- Favoritelist Message
    
    func showEmptyMessage() {
        
        if favoriteList.isEmpty {
            messageLabel.text = "You don't have any favorites yet."
        }
    }

    
    // MARK:- TableView

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteList" )!
        let favorites = favoriteList[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = favorites.value(forKeyPath: "title") as? String
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            CoreDataModel.context.delete(favoriteList[indexPath.row])
            favoriteList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            CoreDataModel.saveContext()
            tableView.reloadData()
        }
    }
    
}




