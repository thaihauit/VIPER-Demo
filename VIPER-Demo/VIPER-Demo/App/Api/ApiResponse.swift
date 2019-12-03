//
//  ApiResponse.swift
//  B+Com U
//
//  Created by Ha Nguyen Thai on 5/20/19.
//  Copyright © 2019 Cloud 9. All rights reserved.
//

import Foundation
import Moya

typealias ResponseCompletion = (Decodable?) -> Void

protocol Restable {
    associatedtype T: TargetType
    var provider: MoyaProvider<T> { get }
    func decodingTask<T: Decodable>(with data: Data, decodingType: T.Type,_ completion: @escaping ResponseCompletion)
    
}

struct Response<T: Decodable>: Decodable {
    let message : String?
    let status : Bool?
    let errors: String?
    let data: T
}







