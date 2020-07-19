//
//  AuthorQuotesAPI.swift
//  Evlla
//
//  Created by Dambar Bista on 7/17/20.
//  Copyright © 2020 Dambar Bista. All rights reserved.
//

import Foundation

// requesting the quotes from third party API(rapidapi)
class AuthorQuotesAPI {
    
    var quotesManagerDelegate: QuotesManagerDelegate?
    
    let headers = [
        "x-rapidapi-host": "qvoca-bestquotes-v1.p.rapidapi.com",
        "x-rapidapi-key": "e00a30dacamsh931f449c6f9766dp10d9b6jsn860fa5b33847"
    ]
    
    var request = URLRequest(url: NSURL(string: "https://qvoca-bestquotes-v1.p.rapidapi.com/quote")! as URL)
    
    
    
    func requestQuotes() {
        
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) {(data, response, error) in
            
            if error != nil {
                print(error!)
            }
            
            
            if let safeData = data {
                if let encodedData = self.parseJSON(data: safeData) {
                    self.quotesManagerDelegate?.didUpdateWithQuotes(update: encodedData)
                    
                }
            }
        }
        
        dataTask.resume()
        
        
    }
    
    // decoding the data from api to native 
    
    func parseJSON(data: Data) -> String? {
        
        let decoder = JSONDecoder()
        
        do {
            let decodedData =  try decoder.decode(AuthorAPIData.self, from: data)
            let quotes = decodedData.message
            let author = decodedData.author
            let quotesAndAuhtor = ("\(quotes) -  \(author)")
            
            return quotesAndAuhtor
            
        } catch {
            print("this is error message from Author quotesApi \(error)")
            quotesManagerDelegate?.didFailWithError(error: error)
            return nil
        }
    }
    
    
}

