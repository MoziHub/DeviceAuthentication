//
//  Camera.swift
//  DeviceAuthAndUsage
//
//  Created by Zack Zhang on 2020/3/12.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit
class Camera: AuthenticationProtocol {
    
    var status: AuthorizationStatus {
        return authorizationStatus(type: .video)
    }
    
    func requestAuthentication(completion: @escaping ((Bool) -> Void), needDefaultHandle: Bool = true) {

        switch status {
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) { (granted: Bool) in
                completion(granted)
            }
        case .authorized:
            completion(true)
            
        case .denied:
            UIApplication.shared.openURL(URL(string: UIApplication.openSettingsURLString)!)
            completion(true)
            needDefaultHandle ? print("You have denied camera authentication, please open it at /Setting/Privacy/Camera") : print("111")
        case .restricted:
            completion(true)
            print("restricted")
        }

    }
    

    
    
}
