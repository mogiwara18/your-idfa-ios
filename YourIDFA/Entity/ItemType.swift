//
//  ItemType.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/18.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public enum ItemType {
    case Header
    case Idfa
    case Optout
    case Action(ActionType)
    
    // MARK: - Property
    
    private var HEADER_CELL_ID: String {
        return "HeaderCell"
    }
    
    private var IDFA_CELL_ID: String {
        return "IdfaCell"
    }
    
    private var OPTOUT_CELL_ID: String {
        return "OptoutCell"
    }
    
    private var ACTION_CELL_ID: String {
        return "ActionCell"
    }
    
    // MARK: - Public
    
    private var cellIdentifier: String {
        switch self {
        case .Header:
            return HEADER_CELL_ID
        case .Idfa:
            return IDFA_CELL_ID
        case .Optout:
            return OPTOUT_CELL_ID
        case .Action:
            return ACTION_CELL_ID
        }
    }
    
    private var nibName: String {
        switch self {
        case .Header:
            return HEADER_CELL_ID
        case .Idfa:
            return IDFA_CELL_ID
        case .Optout:
            return OPTOUT_CELL_ID
        case .Action:
            return ACTION_CELL_ID
        }
    }
    
    public var height: CGFloat {
        switch self {
        case .Header:
            return 140
        case .Idfa:
            return 110
        case .Optout:
            return 80
        case .Action:
            return 70
        }
    }
    
    public static func values() -> [ItemType] {
        return [.Header,
                .Idfa,
                .Optout,
                .Action(.Reload),
                .Action(.Copy),
                .Action(.Send),
                .Action(.Share)]
    }
    
    public static func registerNib(tableView: UITableView) {
        let types: [ItemType] = [.Header, .Idfa, .Optout, .Action(.Other)]
        
        for type in types {
            let nib = UINib(nibName: type.nibName, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: type.cellIdentifier)
        }
    }
    
    public func dequeueReusableCell<T: UITableViewCell>(castType: T,
                                    tableView: UITableView,
                                    indexPath: IndexPath) -> T {
        return tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier,
                                             for: indexPath) as! T
    }
}
