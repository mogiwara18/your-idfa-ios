//
//  MISUser.h
//  MobileInsight
//
//  Copyright (c) 2015年 yahoo-corp. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * `gender` property用のENUM.
 * `MISGenderMale`: 男性
 * `MISGenderFemale`: 女性
 * `MISGenderUnknown`: 不明
 */
typedef NS_ENUM(NSUInteger, MISGender) {
    MISGenderMale,
    MISGenderFemale,
    MISGenderUnknown
};

@interface MISUser : NSObject

/**
 * singleton object.
 *
 * @return `MISUser` object.
 */
+ (nonnull MISUser *)sharedInstance;

/**
 * @property genderの値. `MISGender`のENUM値.
 */
@property (nonatomic, assign) MISGender gender;

/**
 * @property ユーザの識別できるID.
 */
@property (nonatomic, strong, nullable) NSString *customerID;

/**
 * @property ユーザの生まれた年. 4桁の数字. ex) 1990
 */
@property (nonatomic, assign) NSUInteger birthYear;

/**
 * @property 属性.
 */
@property (nonatomic, strong, nullable) NSString *attribute;

@end
