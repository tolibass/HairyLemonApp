//
//  AppProtocols .swift
//  CurrencyObserver
//
//  Created by Anatoliy on 25.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

protocol LoginPresenterProtocol {
    
    func auth (login : String, password : String)
    
}


protocol MainPresenterProtocol {
    func getDataFromNetwork ()
    func quotesCount () -> Int
    func getQuotesModelByIndex (index : Int ) -> QuotesModel
 }

 protocol MainControllerProtocol{
      
    func reload () 
}


