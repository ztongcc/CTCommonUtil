//
//  CTCommonUtil+UserDefault.m
//  CTCommonUtilDemo
//
//  Created by Admin on 2017/1/5.
//  Copyright © 2017年 Arvin. All rights reserved.
//

#import "CTCommonUtil+UserDefault.h"

@implementation CTCommonUtil (UserDefault)

void ct_setObjectForKey(_Nullable id obj,  NSString * _Nonnull key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setObject:obj forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void ct_setIntegerForKey(NSInteger value,  NSString * _Nonnull key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void ct_setBoolForKey(BOOL value,  NSString * _Nonnull key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

void ct_setFloatForKey(float value,  NSString * _Nonnull key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return;
    }
    [[NSUserDefaults standardUserDefaults] setFloat:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

__nullable id ct_objectForKey(NSString * key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return nil;
    }
   return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}


NSString * _Nullable ct_stringForKey(NSString * key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return nil;
    }
    return [[NSUserDefaults standardUserDefaults] stringForKey:key];
}

NSInteger ct_integerForKey(NSString * key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return 0;
    }
    return [[NSUserDefaults standardUserDefaults] integerForKey:key];
}

BOOL ct_boolForKey(NSString * key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return NO;
    }
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

float ct_floatForKey(NSString * key)
{
    if (key == nil || ![key isKindOfClass:[NSString class]])
    {
        return 0.0f;
    }
    return [[NSUserDefaults standardUserDefaults] floatForKey:key];
}

@end
