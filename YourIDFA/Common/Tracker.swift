//
//  Tracker.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit

public final class Tracker {
    
    // MARK: - Singleton
    
    public static let shared = Tracker()
    
    // MARK: - Public
    
    public static func start() {
        self.shared.start()
    }
    
    public static func setOpenURL(url: URL) {
        self.shared.setOpenURL(url: url)
    }
    
    public static func sendAllEvent() {
        self.shared.sendAllEvent()
    }
    
    // MARK: - Private
    
    private func start() {
        MobileInsight.startTrack(withAppID: "", appSecret: "")
    }
    
    private func setOpenURL(url: URL) {
        MobileInsight.setOpen(url)
    }
    
    private func sendAllEvent() {
        self.sendStartSessionEvent()
        self.sendViewProductEvent()
        self.sendAddCartEvent()
        self.sendViewBasketEvent()
        self.sendCheckOutEvent()
        self.sendPurchaseEvent()
        self.sendPaymentInfoEvent()
        self.sendAddFavoriteEvent()
        self.sendSearchEvent()
        self.sendShareEvent()
        self.sendReviewEvent()
        self.sendSignupEvent()
        self.sendLoginEvent()
        self.sendInviteEvent()
        self.sendStartLevelEvent()
        self.sendEndLevelEvent()
        self.sendTutorialEvent()
        self.sendDeepLinkEvent()
        self.sendCustom1Event()
        self.sendCustom2Event()
        self.sendCustom3Event()
        self.sendReservationEvent()
    }
    
    private func sendStartSessionEvent() {
        let event = MISEvent.startSession()
        MobileInsight.send(event)
    }
    
    private func sendViewProductEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.viewProductEvent(with: MISCurrency.jpy(),
                                              items: [item],
                                              newCustomer: false,
                                              inDate: "19900822",
                                              outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendAddCartEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.addCartEvent(with: MISCurrency.jpy(),
                                          items: [item],
                                          newCustomer: false,
                                          inDate: "19900822",
                                          outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendViewBasketEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.viewBasketEvent(with: MISCurrency.jpy(),
                                             items: [item],
                                             newCustomer: false,
                                             inDate: "19900822",
                                             outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendCheckOutEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.checkOutEvent(with: MISCurrency.jpy(),
                                           items: [item],
                                           newCustomer: false,
                                           inDate: "19900822",
                                           outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendPurchaseEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.purchaseEvent(with: MISCurrency.jpy(),
                                           items: [item],
                                           orderID: "order_id",
                                           newCustomer: false,
                                           inDate: "19900822",
                                           outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendPaymentInfoEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.paymentInfoEvent(with: MISCurrency.jpy(),
                                              items: [item],
                                              newCustomer: false,
                                              inDate: "19900822",
                                              outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendAddFavoriteEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.addFavoriteEvent(with: MISCurrency.jpy(),
                                              items: [item],
                                              newCustomer: false,
                                              inDate: "199008222",
                                              outDate: "20170303")
        MobileInsight.send(event)
    }
    
    private func sendSearchEvent() {
        let event = MISEvent.search(withQuery: "search_word")
        MobileInsight.send(event)
    }
    
    private func sendShareEvent() {
        let event = MISEvent.share(withMethod: "method",
                                   contentName: "content_name",
                                   contentType: "content_type",
                                   contentID: .others)
        MobileInsight.send(event)
    }
    
    private func sendReviewEvent() {
        let event = MISEvent.review(withRate: 3,
                                    contentName: "content_name",
                                    contentType: "content_type",
                                    contentID: "content_id")
        MobileInsight.send(event)
    }
    
    private func sendSignupEvent() {
        let event = MISEvent.signUp(withMethod: "method", success: true, status: "status")
        MobileInsight.send(event)
    }
    
    private func sendLoginEvent() {
        let event = MISEvent.loginEvent(withMethod: "method", success: true, status: "status")
        MobileInsight.send(event)
    }
    
    private func sendInviteEvent() {
        let event = MISEvent.invite(withMethod: "method")
        MobileInsight.send(event)
    }
    
    private func sendStartLevelEvent() {
        let event = MISEvent.startLevelEvent(withEvent: "event", level: 10)
        MobileInsight.send(event)
    }
    
    private func sendEndLevelEvent() {
        let event = MISEvent.endLevelEvent(withEvent: "event", achievement: 20, success: true)
        MobileInsight.send(event)
    }
    
    private func sendTutorialEvent() {
        let event = MISEvent.tutorialEvent(withContentID: "content_id", success: true)
        MobileInsight.send(event)
    }
    
    private func sendDeepLinkEvent() {
        let event = MISEvent.deeplinkEvent(withURLScheme: "your-idfa-ios://")
        MobileInsight.send(event)
    }
    
    private func sendCustom1Event() {
        let event = MISEvent.customEvent1(withValue1: "value1",
                                          value2: "value2",
                                          value3: "value3",
                                          value4: "value4")
        MobileInsight.send(event)
    }
    
    private func sendCustom2Event() {
        let event = MISEvent.customEvent2(withValue1: "value1",
                                          value2: "value2",
                                          value3: "value3",
                                          value4: "value4")
        MobileInsight.send(event)
    }
    
    private func sendCustom3Event() {
        let event = MISEvent.customEvent3(withValue1: "value1",
                                          value2: "value2",
                                          value3: "value3",
                                          value4: "value4")
        MobileInsight.send(event)
    }
    
    private func sendReservationEvent() {
        let item = MISItem(itemID: "item_id", quantity: 1, price: 100)
        let event = MISEvent.reservationEvent(with: MISCurrency.jpy(),
                                              items: [item],
                                              orderID: "order_id",
                                              newCustomer: false,
                                              inDate: "19900822",
                                              outDate: "20170303")
        MobileInsight.send(event)
    }
}
