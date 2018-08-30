//
//  DataCheckManager.h
//  Caijisong
//
//  Created by hejingjin on 2018/7/25.
//  Copyright © 2018年 四川省钱坤证券投资咨询有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCheckManager : NSObject

//验证邮箱
+ (BOOL)validateEmail:(NSString *)email;

//验证手机
+ (BOOL)validateMobile:(NSString *)mobile;

//验证车牌
+ (BOOL)validateCarNo:(NSString *)carNo;

//验证用户名
+ (BOOL)validateUserName:(NSString *)name;

//验证密码
+ (BOOL) validatePassword:(NSString *)passWord;

+(BOOL)validateMessagecode:(NSString *)code;

//验证昵称
+ (BOOL) validateNickname:(NSString *)nickname;

//验证身份证
+ (BOOL) validateIdentityCard: (NSString *)identityCard;

@end
