//
//  HomeViewController.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit
import iAd

final class HomeViewController: UITableViewController, ActionDelegate {
    
    // MARK: - Property
    
    private var items: [Item] = []
    private let model = HomeModel()
    private let handler = ActionHandler()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tracker.sendAllEvent()
        self.initialize()
        self.configureTableView()
        self.request()
        self.loadSearchAdsAttribute()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Public
    
    public func reload() {
        self.request()
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
    
    private func loadSearchAdsAttribute(){
        if (objc_getClass("ADClient") != nil) {
            let adClient:ADClient = ADClient.shared();
            //タイムスタンプ取得
            let timestamp:String = String(format: "%0.0f", Date().timeIntervalSince1970)
            
            if #available(iOS 9.0, *) {
                adClient.requestAttributionDetails({ (attributionDetails, error) in
                    if error == nil {
                        var attribution:Dictionary = [String : String]()
                        attribution["timestamp"] = timestamp;
                        attribution["attributionDetails"] = attributionDetails?.description;
                        
                        Tracker.addSearchAdsEvent(dict: attribution)
                    }})
                
            } else if #available(iOS 8.0, *){
                
                adClient.lookupAdConversionDetails { (appPurchaseDate, iAdImpressionDate) in
                    var attribution:Dictionary = [String : String]()
                    attribution["timestamp"] = timestamp;
                    
                    if appPurchaseDate != nil {
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss +zzzz"
                        let dateString = dateFormatter.string(from: appPurchaseDate as! Date)
                        attribution["appPurchaseDate"] = dateString
                    }
                    
                    if iAdImpressionDate != nil {
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss +zzzz"
                        let dateString = dateFormatter.string(from: iAdImpressionDate as! Date)
                        attribution["iAdImpressionDate"] = dateString
                    }
                    
                    Tracker.addSearchAdsEvent(dict: attribution)
                }
                
            } else {
                
            }
        }
    }
    
    
    
    @IBAction func pressMenuButton(_ sender: Any) {
        Analytics.sendEvent(type: EventType.pressMenu)
        let settingVC = UIStoryboard.settingViewController()
        self.present(settingVC, animated: true, completion: nil)
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
            cell.item = item
            return cell
        case .Optout:
            let cell = item.type.dequeueReusableCell(castType: OptoutCell(),
                                                     tableView: tableView, indexPath: indexPath)
            cell.item = item
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
        self.handler.action(item: item)
    }
}

