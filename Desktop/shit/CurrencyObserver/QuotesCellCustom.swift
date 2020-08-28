//
//  QuotesCellCustom.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 25.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit


struct QuotesCellBuilder {
    
    private var cell : QuotesTableViewCell!
    
    mutating func setTableView (_ tableView: UITableView ) {
        self.cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? QuotesTableViewCell
    }
    
    func setData (quotes : QuotesModel) {
        cell.nameLable.text = quotes.symbol
        cell.priceLabel.text =  "\(quotes.bid)"
    }
    
    func setPriceCollor (quotes : QuotesModel) {
        
        cell.priceLabel.textColor = QuotesColor(change: quotes.change24h).rawValue
    }
    
    func build () -> QuotesTableViewCell {
        return cell
    }
}
