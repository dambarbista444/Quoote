//
//  AlertUser.swift
//  Evlla
//
//  Created by Dambar Bista on 7/17/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

/*this method is created to alert user when they swape to right side because author quotes has only one side
 swape feature so this alert will stop they from keep swaping */

struct AlertUser {
    
    static func alert(on viewController: UIViewController) {
        
        let alertController = UIAlertController(title: "Hello friends", message: "Author Quotes has only left swape feature. click, Okay to continue reading.", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
}
