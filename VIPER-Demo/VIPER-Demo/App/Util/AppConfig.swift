//
//  AppConfig.swift
//  VIPER
//
//  Created by Ha Nguyen Thai on 9/25/19.
//  Copyright © 2019 Ace. All rights reserved.
//

import Foundation

class AppConfig : NSObject {

static let sharedInstance = AppConfig()
    
    #if DEBUG
    let baseURL = "http://s064.cloud9-solutions.com/api"
        
    #elseif STAGING
    let baseURL = "http://s064.cloud9-solutions.com/api"

    #elseif RELEASE
    let baseURL = "http://s064.cloud9-solutions.com/api"

    #endif
}


