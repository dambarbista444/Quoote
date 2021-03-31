//
//  Favorite.swift
//  Evlla
//
//  Created by Dambar Bista on 7/16/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// this will hande user favorites to fill and unfill the heart button s

protocol TableViewManager {
    
    func updateTableView()
}

struct Icons {
    
    static func setFavoriteIcon(on favoriteButton: UIButton) {
        favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartFill), for: .normal)
    }
    
    
    static func setUnfavoriteIcon(on favoriteButton: UIButton) {
        
        favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartUnfill), for: .normal)
        
    }
    
    
    static func showFavoriteIcon(on favoriteButton: UIButton, of currentIndex: Int ) {
        
//        if favoriteList.contains(PopularQuotesModel.getPopularQuotes(from: currentIndex)) {
//            
//            favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartFill), for: .normal)
//            
//        }
    }
    
    static func showAuthorFavoriteHeartFill(on favoriteButton: UIButton, of AuthorFavoriteQuotes: String) {
        
//        if favoriteList.contains(AuthorFavoriteQuotes) {
//
//            favoriteButton.setBackgroundImage(UIImage(systemName: Identifier.heartFill), for: .normal)
//
//        }
        
    }
}


