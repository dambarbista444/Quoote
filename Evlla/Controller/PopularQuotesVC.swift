//
//  PopularQuotesVC.swift
//  Evlla
//
//  Created by Dambar Bista on 4/8/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import UIKit
import CoreData

// MARK:- Class PopularVC

class PopularQuotesVC: UIViewController {
    
    
    // MARK:- IBOutlets and Properties
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var quotesLabel: UILabel!
    @IBOutlet weak var folderButton: UIButton!
    
    
    var manager: TableViewManager?
    
    var userLikeQuotes = false
    
    var currentQuotesIndex = Int.random(in: 0..<500)
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
   // var newTitle = Quotes()
    
    
    // MARK:- ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.sendMotivationQuotes(with: updatePopularQuotes())
        configurePageVC()
        //Favorite.showHeartFill(on: favoriteButton, of: currentQuotesIndex)
        
        //fetchRequest()
        
        
    }
    
    
    func fetchRequest() {
        
        let request: NSFetchRequest<Quotes> = Quotes.fetchRequest()
        
        do {
            favoriteList = try context.fetch(request)
            
        } catch {
            print(error)
        }
    }
    

    // MARK:- UpdatePopularQuotes
    // update the PopularQuotesData.getFamousQuotes(from: currentQuotesIndex) to make it  tidy and shorter
    
    func updatePopularQuotes() -> String {
        let popularQuotes = PopularQuotesModel.getPopularQuotes(from: currentQuotesIndex)
        return popularQuotes
    }
    
    
    @IBAction func favoriteFolderPressed(_ sender: UIButton) {
        
        fetchRequest()
    }
    
    
    // MARK:- Share Pressed
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
        
        ShareModel.share(updatePopularQuotes(), viewController: self, sourceView: sender)
    }
    
    
    // MARK:- Favorite Pressed Button
    
    @IBAction func favoritePressed(_ sender: UIButton) {
        
        userLikeQuotes = !userLikeQuotes
        
        if userLikeQuotes == true {
            CoreDataModel.saveQuotes(with: updatePopularQuotes())
            Icons.setFavoriteIcon(on: favoriteButton)
            
        } else {
            CoreDataModel.removeQuotes()
            Icons.setUnfavoriteIcon(on: favoriteButton)
        }
        
    }
    
    
    // MARK:- PageViewControll / Scroll
    
    func configurePageVC() {
        
        guard  let pageVC = storyboard?.instantiateViewController(withIdentifier: String(describing: RandomPageVC.self)) as? RandomPageVC else { return }
        
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

extension PopularQuotesVC: UIPageViewControllerDelegate,UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if currentQuotesIndex == 0 { return nil }
        currentQuotesIndex -= 1
        
        userLikeQuotes = false
        Icons.setUnfavoriteIcon(on: favoriteButton)
        Icons.showFavoriteIcon(on: favoriteButton, of: currentQuotesIndex)
        
        return popularQuotesVC(index: currentQuotesIndex)
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        if currentQuotesIndex >= PopularQuotesModel.quotesList.count { return nil }
        currentQuotesIndex += 1
        userLikeQuotes = false
        Icons.setUnfavoriteIcon(on: favoriteButton)
        Icons.showFavoriteIcon(on: favoriteButton, of: currentQuotesIndex)
        
        return popularQuotesVC(index: currentQuotesIndex)
    }
    
}
