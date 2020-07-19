//
//  FavoriteListViewController.swift
//  Evlla
//
//  Created by Dambar Bista on 4/10/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

// MARK:- Global favoriteList

var favoriteList: [String] = []


// MARK:- FavoriteListViewController

class FavoriteListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    // MARK:- IBOulets and Properties
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var FavoriteListTableView: UITableView!
    
    
    // MARK:- viewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
       favoriteListMessage()
    
    }
    
    
    // MARK:- Done Button

    @IBAction func donePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK:- Favoritelist Message
    
    func favoriteListMessage() {
        
        if favoriteList.isEmpty {
            messageLabel.text = "You don't have any favorites yet."
        }
    }

    
    // MARK:- TableView

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier.cellIdentifier)!
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = favoriteList[indexPath.row]
    
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            favoriteList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.reloadData()
        }
        
        UserDefault.saveFavorite() // this method will update and save the changes on tableview and favoritlist
    }
}




