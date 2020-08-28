//
//  LoginPresenter .swift
//  CurrencyObserver
//
//  Created by Anatoliy on 04.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import Foundation
import UIKit


class LoginPresenter : LoginPresenterProtocol {
    
    var controller : LoginViewProtocol
    
    var networkManager = NetworkManager()
    
    
    
    init(controller: LoginViewProtocol) {
        self.controller = controller
        
    }
    
    
    
    func auth (login : String, password : String) {
        controller.showLoader()
        
        networkManager.auth(login: login, password: password) { [weak self] (result) in
            self?.controller.hideLoader()
            if !result {
                self?.createAlertController()
            }
            
        }
        
        
    }
    
    
    
    
    
    private func createAlertController () {
        let alertController = AlertBuilder.createAlertController(title: "Внимание", message: "Введен неверный логин или пароль", actions:[UIAlertAction(title: "Ok", style: .cancel, handler: nil)])
        controller.showError(alertController: alertController)
    }
    
       
    
}



protocol LoginViewProtocol {
    func showLoader ()
    func hideLoader () 
    func showError ( alertController : UIAlertController)
    func successLogin ( controller: UIViewController)
}




// view will apear ( обновление данных )
// view did apear
// view will dispaear (закрываю все нотификации, кастомные зацикленные анимации и тд  )
// view did disapear 
