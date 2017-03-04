//
//  AboutIdfaViewController.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/25.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

final class AboutIdfaViewController: UIViewController {
    
    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

        Analytics.sendEvent(type: EventType.viewAboutIdfa)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
