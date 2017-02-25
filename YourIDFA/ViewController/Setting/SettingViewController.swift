//
//  SettingViewController.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

final class SettingViewController: UITableViewController {

    // MARK: - Property
    
    private var settings: [Setting] = []
    private let model = SettingModel()
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.configureTableView()
        self.request()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private
    
    private func configureTableView() {
        SettingType.registerNib(tableView: self.tableView)
        self.setEmptyFooter()
    }
    
    private func request() {
        self.settings = self.model.request()
        self.reloadData()
    }
    
    @IBAction func pressCloseButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.settings.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as! SettingCell
        cell.setting = self.settings[indexPath.row]
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let setting = self.settings[indexPath.row]
        switch setting.type {
        case .IDFA:
            let vc = UIStoryboard.aboutIdfaViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case .LICENSE:
            let vc = UIStoryboard.licenseViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case .VERSION:
            ()
        }
    }
}
