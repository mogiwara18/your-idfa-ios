//
//  HomeViewController.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

final class HomeViewController: UITableViewController, ActionDelegate {

    // MARK: - Property
    
    private var items: [Item] = []
    private let model = HomeModel()
    private let handler = ActionHandler()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initialize()
        self.configureTableView()
        self.request()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private
    
    private func initialize() {
        self.handler.viewController = self
    }
    
    private func configureTableView() {
        ItemType.registerNib(tableView: self.tableView)
        self.setEmptyFooter()
    }
    
    private func request() {
        self.items = self.model.request()
        self.reloadData()
    }
    
    
    @IBAction func pressMenuButton(_ sender: Any) {
    }
    

    // MARK: - UITableViewDatasource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = self.items[indexPath.row]
        
        switch item.type {
        case .Header:
            let cell = item.type.dequeueReusableCell(castType: HeaderCell(),
                                                     tableView: tableView, indexPath: indexPath)
            return cell
        case .Idfa:
            let cell = item.type.dequeueReusableCell(castType: IdfaCell(),
                                                     tableView: tableView, indexPath: indexPath)
            return cell
        case .Optout:
            let cell = item.type.dequeueReusableCell(castType: OptoutCell(),
                                                     tableView: tableView, indexPath: indexPath)
            return cell
        case .Action:
            let cell = item.type.dequeueReusableCell(castType: ActionCell(),
                                                     tableView: tableView, indexPath: indexPath)
            cell.item = item
            cell.delegate = self
            return cell
        }
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let item = self.items[indexPath.row]
        return item.type.height
    }
    
    // MARK: - ActionDelegate
    
    func action(item: Item) {
        // TODO
    }
}
