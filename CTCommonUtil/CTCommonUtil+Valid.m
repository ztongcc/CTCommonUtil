//
//  CTCommonUtil+Valid.m
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil+Valid.h"

// 验证数字
#define KPREDICATE_NUMBER   @"^[0-9]*"
// 验证用户密码 (以字母开头，长度在6-18之间，只能包含字符、数字和下划线)
#define KPREDICATE_PASSWORD @"^[a-zA-Z]\\w{5,17}"
// 邮箱
#define KPREDICATE_EMAIL    @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
// url
#define KPREDICATE_URL      @"^http://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$"
// 身份证号
#define KPREDICATE_IDENTITY @"^(\\d{14}|\\d{17})(\\d|[xX])$"
// 手机号
#define KPREDICATE_MOBILE   @"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$"

@implementation CTCommonUtil (Valid)

BOOL  ct_isNull(NSString * string)
{
    NSString * temp;
    if (ct_isValid(string))
    {
        temp = [string lowercaseString];
    }
    else
    {
        return YES;
    }
    if ([string isEqualToString:@"<null>"] || [temp isEqualToString:@"(null)"])
    {
        return YES;
    }
    return NO;
}

BOOL  ct_isValid(NSString * string)
{
    if (string.length == 0 || string == nil)
    {
        return NO;
    }
    NSString * temp = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if (temp.length == 0)
    {
        return NO;
    }
    return YES;
}

BOOL ct_evaluateObjWithPredicate(NSString * string, NSString * predicate)
{
    NSPredicate * pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", predicate];
    BOOL results = [pred evaluateWithObject:string];
    return results;
}

BOOL  ct_isNumber(NSString * number)
{
    if (!ct_isNull(number))
    {
        return ct_evaluateObjWithPredicate(number,KPREDICATE_NUMBER);
    }
    return NO;
}

BOOL  ct_isNumberLengh(NSString * number, int minLengh, int maxLengh)
{
    if (!ct_isNull(number) && ct_isNumber(number))
    {
        NSString * format = [NSString stringWithFormat:@"^\\d{%d,%d}", minLengh, maxLengh];
        return ct_evaluateObjWithPredicate(number,format);
    }
    return NO;
}

BOOL  ct_isValidPassword(NSString * password)
{
    if (!ct_isNull(password))
    {
        return ct_evaluateObjWithPredicate(password, KPREDICATE_PASSWORD);
    }
    return NO;
}


BOOL  ct_isEmail(NSString * email)
{
    if (!ct_isNull(email))
    {
        return ct_evaluateObjWithPredicate(email, KPREDICATE_EMAIL);
    }
    return NO;
}

BOOL  ct_isURL(NSString * url)
{
    if (!ct_isNull(url))
    {
        return ct_evaluateObjWithPredicate(url, KPREDICATE_URL);
    }
    return NO;
}

BOOL ct_isIdentityCard(NSString * identityCard)
{
    if (!ct_isNull(identityCard))
    {
        return ct_evaluateObjWithPredicate(identityCard, KPREDICATE_IDENTITY);
    }
    return NO;
}


BOOL ct_isMobile(NSString * mobile)
{
    if (!ct_isNull(mobile))
    {
        return ct_evaluateObjWithPredicate(mobile, KPREDICATE_MOBILE);
    }
    return NO;
}

@end
