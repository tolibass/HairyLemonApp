//
//  DetailCurruncyPresenter.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 19.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation


class DetailCurrencyPresenter {
    
    var networkManager = NetworkManager()
    
    var controller : DetailCuurencyProtocol
    
    init(controller : DetailCuurencyProtocol) {
        self.controller = controller
    }
    
    
    
    var array : [Int : Int] = [:]
    
     func qwe () {
        networkManager.getCharts { [weak self] (array, isError) in
            if !isError { 
                self?.array = array
            }
        }    }
}


protocol DetailCuurencyProtocol  {

}

