//
//  QuotesCellBuilder.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 24.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation


struct QuotesCellBuilder {
    
    
   private let cell : QuotesTableViewCell!
    
    func setData (name : String, priceLabel : String ) {
        cell.nameLable.text = quotes[indexPath.row].symbol
        cell.priceLabel.text =  "\(quotes[indexPath.row].bid)"
    }
    
    func setPriceColor ( change24h : Double ) {
        
    }
    
    func setTableView (tableView : UITableView ) {
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! QuotesTableViewCell
    }
}
