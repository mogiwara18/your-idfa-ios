//
//  UIStoryboard+Extension.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/25.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    // MARK: - Public
    
    static func settingViewController() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(
            withIdentifier: "NavSettingViewController") as! UINavigationController
    }
    
    static func aboutIdfaViewController() -> AboutIdfaViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(
            withIdentifier: "AboutIdfaViewController") as! AboutIdfaViewController
    }
    
    static func licenseViewController() -> LicenseViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(
            withIdentifier: "LicenseViewController") as! LicenseViewController
    }
}
