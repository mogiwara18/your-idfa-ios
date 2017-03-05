//
//  AppIdentifier.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/18.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class AppIdentifier {
    
    // MARK: - Public
    
    public static func bundleID() -> String {
        guard let identifier = Bundle.main.bundleIdentifier else {
            return ""
        }
        return identifier
    }
    
    public static func appVersion() -> String {
        guard let info = Bundle.main.infoDictionary,
            let version = info["CFBundleShortVersionString"] as? String else {
                return ""
        }
        
        return version
    }
}
