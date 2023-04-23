//
//  ShareModel.swift
//  Evlla
//
//  Created by Dambar Bista on 7/16/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

// this method is created to share the quotes from the application
/* first i used view = UIView() then .sourceView = view, but didn't work as expected on ipad then
 changing to (sourceView: UIButton) now working as expected on all devices  */

struct ShareModel {
    static func share(_ quotes: String, viewController: UIViewController, sourceView: UIButton ) {
        let activityController = UIActivityViewController(activityItems: [quotes], applicationActivities: nil)
        activityController.popoverPresentationController?.sourceView = sourceView
       viewController.present(activityController,animated: true, completion: nil)
    }
}
