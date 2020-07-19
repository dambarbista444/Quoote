//
//  QuotesManagerDelegate.swift
//  Evlla
//
//  Created by Dambar Bista on 7/17/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

/* creating this protocol to hande the updates form third party API and error and implementd only on author
quotes view controller */

protocol QuotesManagerDelegate {
    
    func didUpdateWithQuotes(update: String)
    func didFailWithError(error: Error)
    
}

