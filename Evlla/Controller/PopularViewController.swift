//
//  PopularViewController.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit

// MARK:- Class PopularVC

class PopularViewController: UIViewController {
    
    
    // MARK:- IBOutlets and Properties
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var quotesLabel: UILabel!
    
    var currentQuotesIndex = Int.random(in: 0..<500)
    
    
    // MARK:- ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.sendMotivationQuotes(with: updatePopularQuotes())
        favoriteList = UserDefault.saveFavoritelist()
        configurePageVC()
        Favorite.showHeartFill(on: favoriteButton, of: currentQuotesIndex)
        
    }
    
    // MARK:- UpdatePopularQuotes
    // update the PopularQuotesData.getFamousQuotes(from: currentQuotesIndex) to make it  tidy and shorter
    
    func updatePopularQuotes() -> String {
        let popularQuotes = PopularQuotesData.getFamousQuotes(from: currentQuotesIndex)
        return popularQuotes
    }
    
    
    // MARK:- Share Pressed
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
        
        ShareModel.share(updatePopularQuotes(), viewController: self, sourceView: sender)
        
    }
    
    
    // MARK:- Favorite Pressed Button
    
    @IBAction func favoritePressed(_ sender: UIButton) {
        
        let userLikeQuotes = true
        
        if userLikeQuotes {
            
            Favorite.heartUnfill(on: favoriteButton)
            if let index = favoriteList.firstIndex(of: updatePopularQuotes()) {
                favoriteList.remove(at: index)
                
            } else {
                
                favoriteList.append(updatePopularQuotes())
                Favorite.heartFill(on: favoriteButton)
            }
        }
        
        UserDefault.saveFavorite() // this method will save the quotes in favoritelist
        
    }
    
    
    // MARK:- PageViewControll / Scroll
    
    func configurePageVC() {
        
        
        guard  let pageVC = storyboard?.instantiateViewController(withIdentifier: String(describing: PageViewController.self)) as? PageViewController else { return }
        
        pageVC.delegate     = self
        pageVC.dataSource   = self
        addChild(pageVC)
        pageVC.didMove(toParent: self)
        contentView.addSubview(pageVC.view)
        
        guard let startingVC = popularQuotesVC(index: currentQuotesIndex) else { return }
        pageVC.setViewControllers([startingVC], direction: .forward, animated: true, completion: nil)
        
        
    }
    
    // MARK:- PopularQuoteVC
    // this method will run the qotes on popular Quotes when scroll
    
    func popularQuotesVC(index: Int) -> UIViewController? {
        
        let textViewController  = TextViewController(pageIndex: currentQuotesIndex, pageText: updatePopularQuotes())
        quotesLabel.text        = textViewController.pageText
        
        return textViewController
    }
    
}



// MARK:- PageVC DataSource and Delegate

extension PopularViewController: UIPageViewControllerDelegate,UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if currentQuotesIndex == 0 { return nil }
        currentQuotesIndex -= 1
        
        Favorite.heartUnfill(on: favoriteButton)
        Favorite.showHeartFill(on: favoriteButton, of: currentQuotesIndex)
        
        return popularQuotesVC(index: currentQuotesIndex)
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if currentQuotesIndex >= PopularQuotesData.famousQuotesList.count { return nil }
        currentQuotesIndex += 1
        
        Favorite.heartUnfill(on: favoriteButton)
        Favorite.showHeartFill(on: favoriteButton, of: currentQuotesIndex)
        
        return popularQuotesVC(index: currentQuotesIndex)
    }
    
}








    

    
    

       
       
   




