//
//  LoginInteractor.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 9/30/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation

class LoginInteractor: PresenterToInteractorProtocol {
    var loginProvider: Loginable!
    var presenter: InteractorToPresenterProtocol?
    
    
    func createToken() {
        loginProvider.createToken(id: "F304EAD7-28F9-422F-845C-46F2D7EBB9D5") { (token) in
            
            let test =  token as! Token
            
        }
    }
    
    func generateNewUser() {
        
    }
    
}

