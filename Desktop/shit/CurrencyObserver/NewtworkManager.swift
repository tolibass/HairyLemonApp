//
//  NewtworkManager.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 10.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import Firebase


struct NetworkManager {
    
    
    func auth (login : String, password: String, onComplete: @escaping (_ result: Bool) -> Void  )  {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 3) {
            onComplete ( true )
        }
     }
    
    func getData ( onComplete : @escaping ( [QuotesModel]) -> Void )  {
        let urlSession = URLSession.shared
        guard let url = URL(string: "https://quotes.instaforex.com/api/quotesTick") else {return}
        let task = urlSession.dataTask(with: url) { (data, response, error) in
            let decoder : JSONDecoder = JSONDecoder()
            
            do {
                let quotes = try! decoder.decode([QuotesModel].self, from: data!)
                onComplete (quotes)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    
    func getCharts ( onComplete : @escaping ( [Int : Int], Bool) -> Void ) {
        let array = [1 : 20, 2: 30, 3 : 40, 4 : 58, 5 : 30]
        onComplete (array, false)
        
    }
    
    
}



