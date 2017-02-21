//
//  SettingModel.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/21.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class SettingModel {
    
    // MARK: - Public
    
    public func request() -> [Setting] {
        var settings: [Setting] = []
        
        let idfaSetting = Setting(title: "What's IDFA?", type: .IDFA)
        settings.append(idfaSetting)
        
        let licenseSetting = Setting(title: "License", type: .LICENSE)
        settings.append(licenseSetting)
        
        let versionSetting = Setting(title: "Version", type: .VERSION)
        settings.append(versionSetting)
        
        return settings
    }
}
