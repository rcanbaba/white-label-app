//
//  Constants.swift
//  dealroom
//
//  Created by Can Babaoğlu on 17.12.2023.
//

import Foundation
import UIKit

struct Constants {
    
    static let appName = "dealroom"
    static let appVisibleName = "DealRoom"
    static let appBuild = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "unknown"
    static let osVersion = UIDevice.current.systemVersion
    
    static let baseURL = "https://letsgo.dealroomevents.com"
    
}
