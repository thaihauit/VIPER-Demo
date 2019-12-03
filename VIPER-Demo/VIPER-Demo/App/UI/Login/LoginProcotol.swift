//
//  LoginProcotol.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 10/14/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation

protocol ViewToPresenterProtocol: class {
    
    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    var loginProvider: Loginable! { get set }
    func asyncCreateToken()
}

protocol PresenterToViewProtocol: class {
    func createTokenSuccess()
    func createTokenError()
}

protocol PresenterToRouterProtocol: class {
    static func createModule() -> LoginView
}

protocol PresenterToInteractorProtocol: class {
    var presenter: InteractorToPresenterProtocol? {get set}
    var loginProvider: Loginable! { get set }
    func createToken()
    func generateNewUser()
    
}

protocol InteractorToPresenterProtocol: class {
    
}
