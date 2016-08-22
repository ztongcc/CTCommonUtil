//
//  CTCommonUtil+Valid.h
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil.h"

@interface CTCommonUtil (Valid)

/**
 *  验证字符串是否为Null
 */
BOOL  ct_isNull(NSString * string);

/**
 *  验证字符串是否有效
 */
BOOL  ct_isValid(NSString * string);

/**
 *  验证字符串是否为数字(只能验证整数)
 */
BOOL  ct_isNumber(NSString * number);

/**
 *   验证数字长度是否在范给定围之内
 *
 *  @param targetString 数字
 *  @param minLengh     最小长度
 *  @param maxLengh     最大长度
 *
 *  @return 验证结果
 */
BOOL  ct_isNumberLengh(NSString * number, int minLengh, int maxLengh);

/**
 *  验证用户密码 (以字母开头，长度在6-18之间，只能包含字符、数字和下划线)
 */
BOOL  ct_isValidPassword(NSString * password);

/**
 *  验证邮箱
 */
BOOL  ct_isEmail(NSString * email);

/**
 *  验证URL
 */
BOOL  ct_isURL(NSString * url);

/**
 *  验证身份证号
 */
BOOL ct_isIdentityCard(NSString * identityCard);

/**
 *  验证手机号
 */
BOOL ct_isMobile(NSString * mobile);

@end
