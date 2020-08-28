//
//  QuotesColor.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 18.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit


enum QuotesColor  {
    case green
    case black
    case red
}


extension QuotesColor {
    
    init(change : Double) {
        if change > 0 {
            self = .green
        } else if change < 0 {
            self = .red
        } else {
            self = .black
        }
    }
    
    //init?(change1 : Double) {
    //    switch change1 {
    //    case -1000..<0:
      //      self = .red
      //  case 0:
     //       self = .black
     //   case 0...1000:
     //       self = .green
    //    default:
    //        return nil
       // }
   // }
}
extension QuotesColor : RawRepresentable {
    init?(rawValue: UIColor) {
        switch rawValue {
        case .green: self = .green
        case .red: self = .red
        case .black: self = .black
        default: return nil
        }
    }
    
    var rawValue: UIColor {
        switch self {
        case .green: return .green
        case .red: return .red
        case .black: return .black
        }
    }
    
    typealias RawValue = UIColor
    
    
    
}
