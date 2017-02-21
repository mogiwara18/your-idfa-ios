//
//  SettingType.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/21.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public enum SettingType {
    case IDFA
    case LICENSE
    case VERSION
    
    // MARK: - Property
    
    private static func SETTING_NIB_NAME() -> String {
        return "SettingCell"
    }
    
    private static func SETTING_CELL_ID() -> String {
        return "SettingCell"
    }
    
    // MARK: - Public
    
    public static func registerNib(tableView: UITableView) {
        let nib = UINib(nibName: SETTING_NIB_NAME(), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: SETTING_CELL_ID())
    }
}
