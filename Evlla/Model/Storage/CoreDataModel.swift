//
//  CoreDataModel.swift
//  Evlla
//
//  Created by Dambar Bista on 3/10/21.
//  Copyright © 2021 Dambar Bista. All rights reserved.
//

import Foundation
import CoreData
import UIKit

struct CoreDataModel {
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    static var newQuotes: Quotes?
    
    static func saveQuotes(with quotes: String) {
        
        newQuotes = Quotes(context: context)
        
        if let safeQuotes = newQuotes {
            safeQuotes.title = quotes
            favoriteList.append(safeQuotes)
        }
        saveContext()
    }
    
    
    static func removeQuotes() {
        
        for object in favoriteList {
            if object == newQuotes {
                if let index = favoriteList.firstIndex(of: object) {
                    favoriteList.remove(at: index)
                }
                context.delete(object)
            }
        }
        saveContext()
    }
    
    
    static func saveContext() {
        
        do {
            try context.save()
            
        } catch {
            print("Failure to save quotes: KFG\(error)")
        }
        
    }
    
    
    static func fetchQuotes() {
        
        let request: NSFetchRequest<Quotes> = Quotes.fetchRequest()
        
        do {
            favoriteList = try context.fetch(request)
            
        } catch {
            print("Failure to fetch quotes: \(error)")
        }
    }
    
}


