//
//  LoginPersenter.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 9/30/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation

class LoginPresenter: ViewToPresenterProtocol {
    
    var loginProvider: Loginable!
    var interactor: PresenterToInteractorProtocol?
    var view: PresenterToViewProtocol?
    var router: PresenterToRouterProtocol?
    
    func asyncCreateToken() {
        interactor?.loginProvider = loginProvider
        interactor?.createToken()
    }
    
}

extension LoginPresenter: InteractorToPresenterProtocol {
    
}
