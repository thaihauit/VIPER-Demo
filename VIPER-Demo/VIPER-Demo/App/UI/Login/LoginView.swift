//
//  LoginView.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 9/25/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation
import UIKit

class LoginView: UIViewController {
    
    var presentor: ViewToPresenterProtocol?
    var loginProvider: Loginable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentor?.loginProvider = loginProvider
        presentor?.asyncCreateToken()
        
    }
    
    @IBAction func tap(_ sender: Any) {
        presentor?.asyncCreateToken()
    }
    
}

extension LoginView: PresenterToViewProtocol {
    func createTokenSuccess() {
        
    }
    
    func createTokenError() {
        
    }
    
    
}
