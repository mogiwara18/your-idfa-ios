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
    
    // MARK: - Property
    
    private let service = IdfaService()
    
    // MARK: - Public
    
    public func request() -> [Item] {
        var items: [Item] = []
        
        guard let idfa = self.service.request() else {
            return items
        }
        
        for itemType in ItemType.values() {
            switch itemType {
            case .Header, .Idfa, .Optout:
                let item = Item(idfa: idfa, type: itemType, action: .Other)
                items.append(item)
            case .Action(let actionType):
                let item = Item(idfa: idfa, type: itemType, action: actionType)
                items.append(item)
                break
            }
        }
        
        return items
    }
}
