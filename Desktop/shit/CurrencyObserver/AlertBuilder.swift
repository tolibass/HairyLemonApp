//
//  AlertBuilder.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 04.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit


struct AlertBuilder {
    
    static func createAlertController (title: String, message: String, actions :[UIAlertAction]) -> UIAlertController {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for i in actions {
            alertController.addAction(i)
        }
        
        return alertController
    }
}
