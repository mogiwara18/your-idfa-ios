//
//  Setting.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/21.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public class Setting {
    
    // MARK: - Property
    
    let title: String
    let type: SettingType
    
    // MARK: - Initialize
    
    public init(title: String, type: SettingType) {
        self.title = title
        self.type = type
    }
}
