//
//  SettingType.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/21.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public enum SettingType: SettingCellConvertible {
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
    
    // MARK: - SettingCellConvertible
    
    public var selectionStyle: UITableViewCellSelectionStyle {
        switch self {
        case .IDFA:
            return .default
        case .LICENSE:
            return .default
        case .VERSION:
            return .none
        }
    }
    
    public var accessoryType: UITableViewCellAccessoryType {
        switch self {
        case .IDFA:
            return .disclosureIndicator
        case .LICENSE:
            return .disclosureIndicator
        case .VERSION:
            return .none
        }
    }
    
    public var accessoryView: UIView? {
        switch self {
        case .IDFA, .LICENSE:
            return nil
        case .VERSION:
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 90))
            label.textColor = UIColor.black
            label.font = UIFont(name: "Arial", size: 17)
            label.textAlignment = .right
            label.text = AppIdentifier.appVersion()
            return label
        }
    }
}
