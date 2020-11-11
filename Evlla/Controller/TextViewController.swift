//
//  TextVeiwController.swift
//  Evlla
//
//  Created by Dambar Bista on 7/11/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation
import UIKit

/* this class is created to display the the popular quotes in pageViewController because
 pageViewController need UIViewController to display data and scroll quotes,
 this class will be called in PopularQuotesVC in (viewQuotes) method and return textViewControllerData */

class TextViewController: UIViewController {
    
    var pageIndex: Int
    var pageText: String
    
    init(pageIndex: Int, pageText: String) {

        self.pageIndex  = pageIndex
        self.pageText   = pageText
         super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        
     fatalError("init(coder:) has not been implemented")
    }
}
