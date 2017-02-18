//
//  Idfa.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/18.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class Idfa{
    
    // MARK: - Property
    
    public let identifier: String
    public let isOptout: Bool
    
    // MARK: - Initialize
    
    public init(identifier: String, isOptout: Bool) {
        self.identifier = identifier
        self.isOptout = isOptout
    }
}
