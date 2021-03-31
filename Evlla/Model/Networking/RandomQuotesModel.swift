//
//  RandomQuotesAPIModel.swift
//  Evlla
//
//  Created by Dambar Bista on 7/17/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

class RandomQuotesModel {
    
    var randomQuotesManager: RandomQuotesManagerDelegate?

    func fetchRandomQuotes() {
        
        let url = "https://api.quotable.io/random"
        let stringUrl = URL(string: url)!
        
        let task = URLSession.shared.dataTask(with: stringUrl) { (data, _, error) in
            
            if let safeData = data {
                if let decodedQuotes = self.parseJSON(data: safeData) {
                
                    self.randomQuotesManager?.didUpdateWithQuotes(randomQuotes: decodedQuotes)
                    
                } 
            }
        }
        task.resume()
    }
    
    
    // decoding the data from api to native swift
    
    func parseJSON(data: Data) -> String? {
        
        let decoder = JSONDecoder()
        
        do {
            let decodedData =  try decoder.decode(RandomQuotesAPIData.self, from: data)
            let content = decodedData.content
            let author = decodedData.author
            let quotesAndAuhtor = ("\(content) -  \(author)")
            
            return quotesAndAuhtor
            
        } catch {
            print("this is error message from Random Quotes \(error)")
            randomQuotesManager?.didFailWithError(error: error)
            return nil
        }
    }
    
}

