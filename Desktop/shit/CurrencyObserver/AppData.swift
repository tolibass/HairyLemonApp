//
//  AppData.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 04.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation

struct AppData {
    static var shared = AppData()
    
    var users : [User] = [User(login: "login", password: "123", id: 1)]
}
