//
//  SettingCell.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/25.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

final class SettingCell: UITableViewCell {
    
    // MARK: - Property
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var setting: Setting? {
        didSet {
            self.titleLabel.text = self.setting?.title
            self.convertible = self.setting?.type
        }
    }
    
    private var convertible: SettingCellConvertible? {
        didSet {
            if let convertible = self.convertible {
                self.selectionStyle = convertible.selectionStyle
                self.accessoryType = convertible.accessoryType
                self.accessoryView = convertible.accessoryView
            }
        }
    }
    
    // MARK: - LifeCycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
