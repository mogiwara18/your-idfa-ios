//
//  HomeModel.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit
import AdSupport

public final class HomeModel {
    
    // MARK: - Public
    
    public func request() -> Idfa? {
        guard let manager = ASIdentifierManager.shared() else {
            return nil
        }
        
        let identifier = manager.advertisingIdentifier.uuidString
        let isOptout = manager.isAdvertisingTrackingEnabled ? false : true
        
        return Idfa(identifier: identifier, isOptout: isOptout)
    }
}
