//
//  LoginRouter.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 10/14/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation

class LoginRouter: PresenterToRouterProtocol {
    static func createModule() -> LoginView {
        
        let view = ResourceProvider.getViewController(LoginView.self)
        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = LoginPresenter()
        let interactor: PresenterToInteractorProtocol = LoginInteractor()
        let router:PresenterToRouterProtocol = LoginRouter()
        let provider = LoginManager()
        
        view.presentor = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        view.loginProvider = provider
        
        return view
    }
    
    
}
