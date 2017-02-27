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
    
    public func sendAllEvent() {
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
    
    // MARK: - Private
    
    private func sendStartSessionEvent() {
        
    }
    
    private func sendViewProductEvent() {
        
    }
    
    private func sendAddCartEvent() {
        
    }
    
    private func sendViewBasketEvent() {
        
    }
    
    private func sendCheckOutEvent() {
        
    }
    
    private func sendPurchaseEvent() {
        
    }
    
    private func sendPaymentInfoEvent() {
        
    }
    
    private func sendAddFavoriteEvent() {
        
    }
    
    private func sendSearchEvent() {
        
    }
    
    private func sendShareEvent() {
        
    }
    
    private func sendReviewEvent() {
        
    }
    
    private func sendSignupEvent() {
        
    }
    
    private func sendLoginEvent() {
        
    }
    
    private func sendInviteEvent() {
        
    }
    
    private func sendStartLevelEvent() {
        
    }
    
    private func sendEndLevelEvent() {
        
    }
    
    private func sendTutorialEvent() {
        
    }
    
    private func sendDeepLinkEvent() {
        
    }
    
    private func sendCustom1Event() {
        
    }
    
    private func sendCustom2Event() {
        
    }
    
    private func sendCustom3Event() {
        
    }
    
    private func sendReservationEvent() {
        
    }
}
