//
//  RandomQuotesVC.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit
import CoreData


class RandomQuotesVC: UIViewController {
    
    // MARK:- IBOutlets and Properties
    
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var randomQuotesLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var randomQuotes = RandomQuotesModel()
    var userLikeQuotes = false 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomQuotes.fetchRandomQuotes()
        randomQuotes.randomQuotesManager = self
        configureSwipe()
        showNetworkErrorMessage()
    }
    
    // MARK:- UISwipeGestureRecognizer
    
    func configureSwipe() {
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(swipe:)))
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(swipe:)))
        // rightSwipe is default
        leftSwipe.direction = .left
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(leftSwipe)
    }
    
    // If there is no internet connection or other issue
    func showNetworkErrorMessage() {
        
        randomQuotesLabel.text = "Something went wrong!. Either it's internet connection or fetching issue. Thank you"
        randomQuotesLabel.textColor = .yellow
    }
    
    
    @objc func handleSwipe(swipe: UISwipeGestureRecognizer) {
        if swipe.state == .ended {
            switch swipe.direction {
            
            case .left:
                randomQuotes.fetchRandomQuotes()
                userLikeQuotes = false
                /// Setting to heart icon after user like quotes.
                IconData.setHeartIcon(on: favoriteButton)
    
            case .right:
                AlertCenter.alertUser(onViewController: self)
            default:
                break
            }
        }
    }
    
    
    // MARK:- Share Pressed / UIActivityViewController
    
    @IBAction func sharePressed(_ sender: UIButton) {
        ShareModel.share(randomQuotesLabel.text!, viewController: self, sourceView: sender)
    }
    
    
    // MARK:- Favorite Pressed
    
    @IBAction func favoritePressed(_ sender: UIButton) {
        
        userLikeQuotes = !userLikeQuotes
        
        if userLikeQuotes == true {
            CoreDataModel.saveQuotes(with: randomQuotesLabel.text!)
            IconData.setHeartFillIcon(on: favoriteButton)
            
        } else {
            CoreDataModel.removeQuotes()
            IconData.setHeartIcon(on: favoriteButton)
        }
    }
    
}


// MARK:- AuthorQuotesManager Delegate

extension RandomQuotesVC: RandomQuotesManagerDelegate {
    
    func didUpdateWithQuotes(randomQuotes: String) {
        
        DispatchQueue.main.async {
            
            self.randomQuotesLabel.text = randomQuotes
            self.randomQuotesLabel.textColor = .white
        }
    }
    
    
    func didFailWithError(error: Error) {
        print(" this is error from Random Quotes API \(error)")
    }
    
}











