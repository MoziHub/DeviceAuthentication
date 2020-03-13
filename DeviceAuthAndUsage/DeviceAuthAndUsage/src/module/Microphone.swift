//
//  Microphone.swift
//  DeviceAuthAndUsage
//
//  Created by Zack Zhang on 2020/3/12.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation
import AVFoundation


class Microphone {
    var status: AuthorizationStatus {
        return authorizationStatus(type: .audio)
    }
    
    func requestAuthentication(completion: @escaping ((Bool) -> Void), needDefaultHandle: Bool = true) {

        switch status {
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .audio) { (granted: Bool) in
                completion(granted)
            }
        case .authorized:
            completion(true)
            
        case .denied:
            completion(true)
            needDefaultHandle ? print("You have denied camera authentication, please open it at /Setting/Privacy/Microphone") : print("111")
        case .restricted:
            completion(true)
            print("restricted")
        }

    }
}
