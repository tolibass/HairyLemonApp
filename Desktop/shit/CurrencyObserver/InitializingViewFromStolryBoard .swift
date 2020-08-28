//
//  InitializingViewFromStolryBoard .swift
//  CurrencyObserver
//
//  Created by Anatoliy on 05.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit

struct Router {
    
    static var shared = Router()

    public func recivingViewController (from : UIViewController,   to : ViewControllerIdentifiere)  {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: to.rawValue)
        from.present(controller, animated: true, completion: nil)
        
       
    }

    
    }


    enum ViewControllerIdentifiere : String {
    case mainController = "mainController"
    case detailCurrencyViewController = "detailController"
}


