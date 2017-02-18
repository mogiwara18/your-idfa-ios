//
//  Device.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/18.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class Device {
    
    // MARK: - Public
    
    public static func os() -> String {
        return UIDevice.current.systemVersion
    }
    
    
    public static func platform() -> String {
        var size = 0
        sysctlbyname("hw.machine", nil, &size, nil, 0)
        var machine = [CChar](repeating: 0, count: Int(size))
        sysctlbyname("hw.machine", &machine, &size, nil, 0)
        return String(cString: machine)
    }
}
