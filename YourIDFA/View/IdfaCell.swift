//
//  IdfaCell.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

final class IdfaCell: UITableViewCell {
    
    // MARK: - Property
    
    @IBOutlet weak var idfaLabel: UILabel!
    
    var item: Item? {
        didSet {
            if let item = self.item {
                self.idfaLabel.text = item.idfa.identifier
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
