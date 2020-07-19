//
//  AuthurViewController.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit


class AuthorViewController: UIViewController {
    
    // MARK:- IBOutlets and Properties

    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var favoriteButton: UIButton!
    
    var getQuotes = AuthorQuotesAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getQuotes.requestQuotes()
        getQuotes.quotesManagerDelegate = self
        configureSwipe()
        favoriteList = UserDefault.readFavoite()
    
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
                Favorite.showAuthorFavoriteHeartFill(on: favoriteButton, of: authorLabel.text!)
                getQuotes.requestQuotes()
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
        
        ShareModel.share(authorLabel.text!, viewController: self, sourceView: sender)
        
    }
    
    // MARK:- Favorite Pressed
    
    @IBAction func favoritePressed(_ sender: UIButton) {
        
        let userLikeQuotes = true
        
        if userLikeQuotes {
            Favorite.heartUnfill(on: favoriteButton)
            if let index = favoriteList.firstIndex(of: authorLabel.text!) {
                favoriteList.remove(at: index)
                
            } else {
                favoriteList.append(authorLabel.text!)
                Favorite.heartFill(on: favoriteButton)
            }
        }
        
        UserDefault.saveFavorite()
    }
    
   
}



// MARK:- AuthorQuotesManager Delegate

extension AuthorViewController: QuotesManagerDelegate {
    
    func didUpdateWithQuotes(update: String) {
        
        DispatchQueue.main.async {
            self.authorLabel.text = update
            
        }
    }
    
    func didFailWithError(error: Error) {
        print(" this is error from author Quotes API")
    }
    
}











