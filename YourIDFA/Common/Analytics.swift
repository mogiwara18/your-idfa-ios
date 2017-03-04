//
//  Analytics.swift
//  YourIDFA
//
//  Created by naoto yamaguchi on 2017/02/19.
//  Copyright © 2017年 naoto yamaguchi. All rights reserved.
//

import UIKit
import Firebase

public protocol AnalyticsConvertible {
    
    var eventName: String { get }
    
    var parameters: [String: NSObject]? { get }
}

public enum EventType: AnalyticsConvertible {
    case reload
    case copy
    case sendMail
    case share
    case pressMenu
    case viewAboutIdfa
    case viewLicense
    
    // MARK: - AnalyticsConvertible
    
    public var eventName: String {
        switch self {
        case .reload:
            return kFIREventSelectContent
        case .copy:
            return kFIREventSelectContent
        case .sendMail:
            return kFIREventSelectContent
        case .share:
            return kFIREventShare
        case .pressMenu:
            return "press_menu"
        case .viewAboutIdfa:
            return "view_about_idfa"
        case .viewLicense:
            return "view_license"
        }
    }
    
    public var parameters: [String : NSObject]? {
        switch self {
        case .reload:
            return [kFIRParameterContentType: "reload" as NSObject]
        case .copy:
            return [kFIRParameterContentType: "copy" as NSObject]
        case .sendMail:
            return [kFIRParameterContentType: "send_mail" as NSObject]
        default:
            return nil
        }
    }
}

public final class Analytics {
    
    // MARK: - Singleton
    
    public static let shared = Analytics()
    
    // MARK: - Public
    
    public static func configure() {
        self.shared.configure()
    }
    
    public static func sendEvent(type: AnalyticsConvertible) {
        self.shared.sendEvent(type: type)
    }
    
    // MARK: - Private
    
    private func configure() {
        FIRApp.configure()
    }
    
    private func sendEvent(type: AnalyticsConvertible) {
        FIRAnalytics.logEvent(withName: type.eventName, parameters: type.parameters)
    }
}
