//
//  Favorite.swift
//  Evlla
//
//  Created by Dambar Bista on 7/16/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// this method will hande user favorites to fill and unfill he heart button 

struct Favorite {
    
    static func heartFill(on favoriteButton: UIButton) {
        favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartFill), for: .normal)
    }
    
    
    static func heartUnfill(on favoriteButton: UIButton) {
        
        favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartUnfill), for: .normal)
        
    }
    
    
    static func showHeartFill(on favoriteButton: UIButton, of currentIndex: Int ) {
        
        if favoriteList.contains(PopularQuotesData.getFamousQuotes(from: currentIndex)) {
            
            favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartFill), for: .normal)
            
        }
    }
    
    static func showAuthorFavoriteHeartFill(on favoriteButton: UIButton, of AuthorFavoriteQuotes: String) {
        
        if favoriteList.contains(AuthorFavoriteQuotes) {
    
            favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartFill), for: .normal)
            
        }
        
    }
}


