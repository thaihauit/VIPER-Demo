//
//  LoginMagager.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 9/30/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation
import Moya

protocol Loginable {
    func createToken(id: String, _ completion:  @escaping ResponseCompletion)
    func registerUser(name: String, token: String)
}

struct LoginManager: Loginable, Restable {
    
    var  provider = MoyaProvider<LoginApi>(plugins: [NetworkLoggerPlugin(verbose: true)])
    
    func createToken(id: String, _ completion:  @escaping ResponseCompletion) {
        provider.request(.createToken(id: id)) { result in
            switch result {
            case let .success(response):
                self.decodingTask(with: response.data, decodingType: Token.self) { (data) in
                    completion(data)
                }
            case .failure(_):
                completion(nil)
            }
        }
    }
    
    func registerUser(name: String, token: String) {
        
    }
    
    func decodingTask<T: Decodable>(with data: Data, decodingType: T.Type, _ completion: @escaping ResponseCompletion) {
        do {
            let genericModel = try JSONDecoder().decode(decodingType, from: data)
            completion(genericModel)
        } catch {
            completion(nil)
        }
    }
    
    
}
