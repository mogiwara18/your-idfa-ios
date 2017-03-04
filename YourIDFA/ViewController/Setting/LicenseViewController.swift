//
//  LicenseViewController.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/25.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

final class LicenseViewController: UIViewController {

    // MARK: - Property
    
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Analytics.sendEvent(type: EventType.viewLicense)
        self.loadLicense()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private
    
    private func loadLicense() {
        guard let path = Bundle.main.path(forResource: "LICENSE", ofType: "txt") else {
            return
        }
        
        do {
            let text = try String(contentsOfFile: path, encoding: .utf8)
            self.textView.text = text
        } catch {
            // noop
        }
    }
}
