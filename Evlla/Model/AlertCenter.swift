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

struct AlertCenter {
    
    static func alertUser(onViewController viewController: UIViewController) {
        
        let alertController = UIAlertController(title: "Hello There!", message: "Ramdom quotes has only left swape feature. Click, Okay to continue reading.", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Okay", style: .cancel, handler: nil))
        
        viewController.present(alertController, animated: true, completion: nil)
    }
    
}
