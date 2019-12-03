//
//  ResponseState.swift
//  B+Com U
//
//  Created by Ha Nguyen Thai on 7/31/19.
//  Copyright © 2019 Cloud 9. All rights reserved.
//

import Foundation

enum StatusCode: Int {
    
    case success = 200
    case authorizationError = 405
    case unknown = 0
    
    var key: Int {
        return self.rawValue
    }
    
    var display: String {
        switch self {
        case .authorizationError:
            return "msg_api_error"
        case .unknown:
            return "msg_api_error"
        case .success:
            return ""
        }
    }
    
    static func get(_ statusCode: Int) -> StatusCode {
        if let type = StatusCode(rawValue: statusCode) {
            return type
        }
        return .unknown
    }
}
