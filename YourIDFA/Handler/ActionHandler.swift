//
//  ActionHandler.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class ActionHandler: NSObject {
    
    // MARK: - Property
    
    public weak var viewController: UIViewController?
    
    // MARK: - Public
    
    public func action(item: Item) {
        
    }
    
    // MARK: - Private
    
    private func reload(item: Item) {
        // TODO
    }
    
    private func copy(item: Item) {
        let pb = UIPasteboard.general
        pb.string = item.idfa.identifier
        
        // TODO: show Toast
    }
    
    private func send(item: Item) {
        // TODO
    }
    
    private func share(item: Item) {
        let shareItems = [item.idfa.identifier]
        let activity = UIActivityViewController(activityItems: shareItems,
                                                applicationActivities: nil)
        self.viewController?.present(activity, animated: true, completion: nil)
    }
}
