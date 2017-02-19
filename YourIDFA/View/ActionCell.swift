//
//  ActionCell.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit
import Material

final class ActionCell: UITableViewCell {
    
    // MARK: - Property
    
    @IBOutlet weak var actionButton: FlatButton!
    weak var delegate: ActionDelegate?
    
    var item: Item? {
        didSet {
            if let action = self.item?.action {
                self.actionButton.setTitle(action.text, for: .normal)
                self.actionButton.backgroundColor = action.buttonColor
                self.actionButton.tintColor = action.buttonColor
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
    
    // MARK: - Private
    
    @IBAction func pressActionButton(_ sender: Any) {
        guard let item = self.item else {
            return
        }
        
        self.delegate?.action(item: item)
    }
}