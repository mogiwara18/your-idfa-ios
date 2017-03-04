//
//  AppDelegate+Deeplink.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/03/04.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

extension AppDelegate {
    
    func application(_ app: UIApplication,
                     open url: URL,
                     options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        
        Tracker.setOpenURL(url: url)
        
        return true
    }
    
    func application(_ application: UIApplication,
                     continue userActivity: NSUserActivity,
                     restorationHandler: @escaping ([Any]?) -> Void) -> Bool {
        
        if userActivity.activityType == NSUserActivityTypeBrowsingWeb {
            guard let url = userActivity.webpageURL else {
                // TODO: error handle
                return false
            }
            
            if !self.handleUniversalLinks(url: url) {
                UIApplication.shared.openURL(url)
                return false
            }
            
            Tracker.setOpenURL(url: url)
        }
        
        return true
    }
    
    // MARK: - Private
    
    private func handleUniversalLinks(url: URL) -> Bool {
        guard let component = URLComponents(url: url, resolvingAgainstBaseURL: true),
            let host = component.host else {
            return false
        }
        
        switch host {
        case "f05a8dc6f81e2495bde8c2a9c2c76dca.mit.yahoo.co.jp":
            return true
        default:
            return false
        }
    }
    
}
