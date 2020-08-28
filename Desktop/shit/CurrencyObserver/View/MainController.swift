//
//  MainController.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 16.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class MainController: UITableViewController, MainControllerProtocol {
   
    func reload() {
        tableView.reloadData()
    }
    
    
    
    var presenter : MainPresenterProtocol?
    let networkManaget : NetworkManager = NetworkManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = MainControllerPresenter(controller: self)
        presenter?.getDataFromNetwork()
       
        
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nameLabelCell =  presenter?.getQuotesModelByIndex(index: indexPath.row).symbol
        
        
        Router.shared.recivingViewController (from : self,   to : .detailCurrencyViewController )
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ((presenter?.quotesCount())!)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        //let color : UIColor = QuotesColor.green.rawValue
        //let qColor : QuotesColor = QuotesColor.init(rawValue: .green)
        
        var quotesCell = QuotesCellBuilder()
        
        quotesCell.setTableView(tableView)
        quotesCell.setData(quotes: (presenter?.getQuotesModelByIndex(index: indexPath.row))!)
        quotesCell.setPriceCollor(quotes: ((presenter?.getQuotesModelByIndex(index: indexPath.row))!))
        return  quotesCell.build()
    }

}




