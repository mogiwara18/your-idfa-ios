//
//  ActionHandler.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit
import MessageUI

public final class ActionHandler: NSObject, MFMailComposeViewControllerDelegate {
    
    // MARK: - Property
    
    weak var viewController: HomeViewController?
    
    // MARK: - Public
    
    public func action(item: Item) {
        switch item.action {
        case .Reload:
            self.reload(item: item)
        case .Copy:
            self.copy(item: item)
        case .Send:
            self.sendMail(item: item)
        case .Share:
            self.share(item: item)
        case .Other:
            ()
        }
    }
    
    // MARK: - Private
    
    private func reload(item: Item) {
        self.viewController?.reload()
    }
    
    private func copy(item: Item) {
        let pb = UIPasteboard.general
        pb.string = item.idfa.identifier
        
        // TODO: show Toast
    }
    
    private func sendMail(item: Item) {
        // TODO: separate Mail Builder
        if MFMailComposeViewController.canSendMail() == false {
            // TODO: show alert
            return
        }
        
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = self
        vc.setSubject(Constants.Share.MAIL_SUBJECT)
        vc.setMessageBody(self.mailBody(item: item), isHTML: false)
        self.viewController?.present(vc, animated: true, completion: nil)
    }
    
    private func share(item: Item) {
        let shareItems = [item.idfa.identifier]
        let activity = UIActivityViewController(activityItems: shareItems,
                                                applicationActivities: nil)
        self.viewController?.present(activity, animated: true, completion: nil)
    }
    
    private func mailBody(item: Item) -> String {
        let optout = item.idfa.isOptout ? "True" : "False"
        let body = "--- Device Info --- \n IDFA: \(item.idfa.identifier) \n Optout: \(optout)"
        
        return body
    }
    
    // MARK: - MFMailComposeViewControllerDelegate
    
    public func mailComposeController(_ controller: MFMailComposeViewController,
                                      didFinishWith result: MFMailComposeResult, error: Error?) {
        
        switch result {
        case .sent, .saved, .cancelled, .failed:
            ()
        }
        
        controller.dismiss(animated: true, completion: nil)
    }
}
