//
//  Tool.swift
//  DeviceAuthAndUsage
//
//  Created by Zack Zhang on 2020/3/12.
//  Copyright © 2020 personal. All rights reserved.
//

import Foundation
import AVFoundation
func authorizationStatus(type:AVMediaType) -> AuthorizationStatus {
    switch AVCaptureDevice.authorizationStatus(for: type) {
           case .notDetermined:
               return .notDetermined
               case .authorized:
               return .authorized
           case .denied:
               return .denied
           case .restricted:
               return .restricted
           default:
               return .notDetermined
           }
}
