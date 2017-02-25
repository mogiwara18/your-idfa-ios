//
//  SettingCellConvertible.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/25.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public protocol SettingCellConvertible {
    
    var selectionStyle: UITableViewCellSelectionStyle { get }
    
    var accessoryType: UITableViewCellAccessoryType { get }
    
    var accessoryView: UIView? { get }
}
