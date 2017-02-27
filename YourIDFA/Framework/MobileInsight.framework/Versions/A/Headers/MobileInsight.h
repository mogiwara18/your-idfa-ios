//
//  MobileInsight.h
//  MobileInsight
//
//  Copyright (c) 2015年 yahoo-corp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MISUser.h"
#import "MISEvent.h"
#import "MISCurrency.h"
#import "MISItem.h"

@interface MobileInsight : NSObject

/// --------------------------------------------------------------------------------------
/// @require
/// --------------------------------------------------------------------------------------

/**
 * 初期化メソッド. `application:didFinishLaunchingWithOptions:`に必ず実装.
 *
 * @param appID 発行したappID
 * @param appSecret 発行したappSecret
 */
+ (void)startTrackWithAppID:(nonnull NSString *)appID
                  appSecret:(nonnull NSString *)appSecret;

/**
 * `application:openURL:sourceApplication:annotation:`に必ず実装.
 *
 * @param URL `application:openURL:sourceApplication:annotation:`のopenURLの引数を入れる.
 */
+ (void)setOpenURL:(nonnull NSURL *)URL;

/// --------------------------------------------------------------------------------------
/// @optional
/// --------------------------------------------------------------------------------------

/**
 * `MISEvent`objectをセットすることで, そのeventを保存します.
 *
 * see MISEvent.h
 *
 * @param event `MISEvent` object.
 */
+ (void)sendEvent:(nonnull MISEvent *)event;

/**
 * `MISUser`objectをセットすることで, eventの送信時にuser情報として付与されます.
 *
 * see MISuser.h
 *
 * @param user `MISuser` object.
 */
+ (void)setUser:(nonnull MISUser *)user;

/**
 *  `Yes`をセットすることで、細かいdebug情報がコンソールに表示されます。
 *
 *  @param isDebug Yes/No
 */
+ (void)setDebug:(BOOL)isDebug;

@end
