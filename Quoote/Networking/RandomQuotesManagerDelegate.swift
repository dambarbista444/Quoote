//
//  RandomQuotesManagerDelegate.swift
//  Evlla
//
//  Created by Dambar Bista on 7/17/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

/* creating this protocol to hande the updates fromm third party API and error and implementd only on author
quotes view controller */

protocol RandomQuotesManagerDelegate {
    
    func didUpdateWithQuotes(randomQuotes: String)
    func didFailWithError(error: Error)
    
}

