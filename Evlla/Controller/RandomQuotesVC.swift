//
//  RandomQuotesVC.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit


class RandomQuotesVC: UIViewController {
    
    // MARK:- IBOutlets and Properties

    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var randomQuotesLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var randomQuotes = RandomQuotesAPIModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomQuotes.requestRandomQuotes()
        randomQuotes.quotesManagerDelegate = self
        configureSwipe()
        favoriteList = UserDefault.saveFavoritelist()
    
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
    
    
    @objc func handleSwipe(swipe: UISwipeGestureRecognizer) {
        if swipe.state == .ended {
            switch swipe.direction {
                
            case .left:
                Favorite.showAuthorFavoriteHeartFill(on: favoriteButton, of: randomQuotesLabel.text!)
                randomQuotes.requestRandomQuotes()
                Favorite.heartUnfill(on: favoriteButton)
            
            case .right:
                AlertUser.alert(on: self)
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
        
        let userLikeQuotes = true
        
        if userLikeQuotes {
            Favorite.heartUnfill(on: favoriteButton)
            if let index = favoriteList.firstIndex(of: randomQuotesLabel.text!) {
                favoriteList.remove(at: index)
                
            } else {
                favoriteList.append(randomQuotesLabel.text!)
                Favorite.heartFill(on: favoriteButton)
            }
        }
        
        UserDefault.saveFavorite()
    }
    
   
}



// MARK:- AuthorQuotesManager Delegate

extension RandomQuotesVC: RandomQuotesManagerDelegate {
    
    func didUpdateWithQuotes(update: String) {
        
        DispatchQueue.main.async {
            self.randomQuotesLabel.text = update
            
        }
    }
    
    func didFailWithError(error: Error) {
        print(" this is error from author Quotes API")
    }
    
}











