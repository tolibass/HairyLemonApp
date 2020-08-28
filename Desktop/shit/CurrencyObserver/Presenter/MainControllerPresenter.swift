//
//  MainControllerPresenter.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 25.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

class MainControllerPresenter: MainPresenterProtocol {
    
    
    
    private var quotes : [QuotesModel] = []
    private let networkManaget : NetworkManager = NetworkManager()
    let controller : MainControllerProtocol!
    init(controller : MainControllerProtocol) {
        self.controller = controller
    }

    
    func quotesCount() -> Int {
        return quotes.count
    }
    
    func getQuotesModelByIndex(index: Int) -> QuotesModel {
        return quotes[index]
    }
    


    func getDataFromNetwork () {
        DispatchQueue.global(qos: .background).async { [weak self] in
            self?.networkManaget.getData {
                    (data) in
                self?.quotes = data
                       DispatchQueue.main.async {
                        self?.controller.reload()
                       }
                       
                   }
               }
        
            }

     }



// патерны ( билдер и тд )
// лог
