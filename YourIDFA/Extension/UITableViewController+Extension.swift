//
//  UITableViewController+Extension.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

extension UITableViewController {
    
    // MARK: - Public
    
    public func setEmptyFooter() {
        let footer = UIView()
        self.tableView.tableFooterView = footer
    }
    
    public func reloadData() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
