//
//  UserDefault.swift
//  Evlla
//
//  Created by Dambar Bista on 6/12/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

//saving the user favorite quotes to favorite list by implementing UserDefaults
// this userDefault handle to save the quotes on popularViewController and AuthorViewController

struct UserDefault {
    
    // writing userDefaults
    static func saveFavorite() {
        
        let defaults = UserDefaults.standard
        
        defaults.setValue(favoriteList, forKey: Identifier.saveFavorite)
        
    }
    
     // reading userDefults
    static func readFavoite() -> [String] {
        
        let defaults = UserDefaults.standard
    
       let saveFavorite = defaults.array(forKey: Identifier.saveFavorite) as? [String] ?? [String] ()
        return saveFavorite
    }
    
}
