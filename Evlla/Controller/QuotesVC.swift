//
//  QuotesVC.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

class QuotesVC: UIViewController {
    
    // MARK:- IBOutlets and Properties

    @IBOutlet weak var popularQuotesView: UIView!
    @IBOutlet weak var authorQuotesView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authorQuotesView.isHidden = true
    }
    
    
    // MARK:- UISegmentedControl
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
        
            popularQuotesView.isHidden = false
            authorQuotesView.isHidden = true
            
        } else if sender.selectedSegmentIndex == 1 {
            
            popularQuotesView.isHidden = true
            authorQuotesView.isHidden = false
        }
    }
}

