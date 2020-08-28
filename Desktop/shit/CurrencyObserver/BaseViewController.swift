//
//  BaseViewController.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 26.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    private var storage : [String: Any] = [:]
    
    func set ( key : String,  value : Any ) {
        storage[key] = value
        
    }
    
    func get (key : String) -> String  {
        return storage[key] as! String
    }

    func get (key : String) -> Int {
        return storage[key] as! Int
    }

    
// добавить метод get
    //
    

}
