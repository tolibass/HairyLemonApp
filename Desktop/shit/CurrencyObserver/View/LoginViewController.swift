//
//  ViewController.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 04.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import TextFieldEffects



class LoginViewController: UIViewController,LoginViewProtocol  {
 
    var loader : UIActivityIndicatorView = UIActivityIndicatorView(style: .large)
    
   private var presenter : LoginPresenterProtocol?
    
    @IBOutlet weak var loginTF: HoshiTextField!
    @IBOutlet weak var passwordTF: HoshiTextField!
    @IBOutlet weak var buttonLogIn: UIButton!
    @IBOutlet weak var loginView: UIView!
    
    func showMainController () {
        
        Router.shared.recivingViewController(from: self, to: .mainController)
    
    
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenter(controller: self)
        initUI()
        
    
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
     showMainController()
    }
    
    
    
   private func initUI () {
    view.backgroundColor = AppColor.colorBase.backgroundColorDark
    loginView.backgroundColor = AppColor.colorBase.backgroundColorLight
    buttonLogIn.backgroundColor = AppColor.colorBase.activeElementColor
    loginTF.borderActiveColor = AppColor.colorBase.activeElementColor
    loginTF.borderInactiveColor = AppColor.colorBase.disableElementColor
    passwordTF.borderActiveColor = AppColor.colorBase.activeElementColor
    passwordTF.borderInactiveColor = AppColor.colorBase.disableElementColor
    loginView.layer.cornerRadius = 5
    loginView.layer.masksToBounds = true
    
    
    
    
    }
        
    func showError(alertController: UIAlertController) {
        present(alertController, animated: true, completion: nil)
    }
       
       func successLogin(controller: UIViewController) {
           present(controller, animated: true, completion: nil)
       }

     
     func showLoader() {
        loader.startAnimating()
        view.addSubview(loader)
     }
     
     func hideLoader() {
        loader.removeFromSuperview()
     }
     

}



//создать пользователя, заменить текст филды, авторизация через фаербейс


