//
//  Item.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/18.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class Item {
    
    // MARK: - Property
    
    public let idfa: Idfa
    public let type: ItemType
    public let action: ActionType
    
    // MARK: - Initialize
    
    public init(idfa: Idfa, type: ItemType, action: ActionType) {
        self.idfa = idfa
        self.type = type
        self.action = action
    }
}
