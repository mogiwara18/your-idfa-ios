//
//  ActionType.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public enum ActionType: ActionCellConvertible {
    case Reload
    case Copy
    case Send
    case Share
    case Other
    
    // MARK: - ActionCellConvertible
    
    public var title: String {
        switch self {
        case .Reload:
            return "Reload"
        case .Copy:
            return "Copy To ClipBoard"
        case .Send:
            return "Send Mail"
        case .Share:
            return "Share"
        case .Other:
            return ""
        }
    }
    
    public var buttonColor: UIColor {
        switch self {
        case .Reload:
            return UIColor(red: 255/255, green: 128/255, blue: 171/255, alpha: 1)
        case .Copy:
            return UIColor(red: 255/255, green: 64/255, blue: 129/255, alpha: 1)
        case .Send:
            return UIColor(red: 245/255, green: 0/255, blue: 87/255, alpha: 1)
        case .Share:
            return UIColor(red: 197/255, green: 17/255, blue: 98/255, alpha: 1)
        case .Other:
            return UIColor.clear
        }
    }
}
