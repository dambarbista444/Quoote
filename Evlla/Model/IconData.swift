//
//  Favorite.swift
//  Evlla
//
//  Created by Dambar Bista on 7/16/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit
import CoreData

// this will hande user favorites to fill and unfill the heart button s

struct IconData {
    
    static func setHeartIcon(on favoriteButton: UIButton) {
        favoriteButton.setBackgroundImage(UIImage(systemName: "heart"), for: .normal)
    }
    
    
    static func setHeartFillIcon(on favoriteButton: UIButton) {
        favoriteButton.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
    }
    
    
    static func showHeartFillIcon(on favoriteButton: UIButton, quotes: String) {
        
        let request: NSFetchRequest<Quotes> = Quotes.fetchRequest()
        request.predicate = NSPredicate.init(format: "title == %@", quotes)
        request.fetchLimit = 1
        
        do {
            let count = try CoreDataModel.context.count(for: request)
            if count == 1 {
                favoriteButton.setBackgroundImage(UIImage(systemName: "heart.fill"), for: .normal)
            }
            
        } catch {
            print("Failure to fetch quotes: \(error)")
        }
    }
    
}


