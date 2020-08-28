//
//  QuotesModel .swift
//  CurrencyObserver
//
//  Created by Anatoliy on 16.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

struct QuotesModel : Decodable {
 
    
    var ask : Double
    var bid : Double
    var symbol : String
    var change24h : Double
    
    enum Category : String, CodingKey {
        case symbol = "symbol"
        case ask = "ask"
        case change24h = "change24h"
        case bid = "bid"
        
        
    }
    
    init(from decoder: Decoder ) throws {
        let container = try decoder.container(keyedBy: Category.self)
        symbol = try container.decode(String.self, forKey: .symbol)
        ask = try  container.decode(Double.self, forKey: .ask)
        change24h = try container.decode(Double.self, forKey: .change24h)
        bid = try container.decode(Double.self, forKey: .bid)
        
        
    }
}


// фасад, строитель, фабрика, адаптер, цепочка обяанностей
// 
