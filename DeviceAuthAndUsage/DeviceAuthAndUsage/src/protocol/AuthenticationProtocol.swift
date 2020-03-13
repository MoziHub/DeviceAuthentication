//
//  AuthenticationProtocol.swift
//  DeviceAuthAndUsage
//
//  Created by Zack Zhang on 2020/3/12.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation

enum AuthorizationStatus {
    
        case notDetermined

        case restricted

        case denied

        case authorized
}

protocol AuthenticationProtocol {
    
    var status:AuthorizationStatus { get }
    
    func requestAuthentication(completion:@escaping ((_ granted:Bool) ->Void), needDefaultHandle:Bool)
    
}
