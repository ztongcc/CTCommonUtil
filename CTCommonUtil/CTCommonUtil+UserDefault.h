//
//  CTCommonUtil+UserDefault.h
//  CTCommonUtilDemo
//
//  Created by Admin on 2017/1/5.
//  Copyright © 2017年 Arvin. All rights reserved.
//

#import "CTCommonUtil.h"

@interface CTCommonUtil (UserDefault)

void ct_setObjectForKey(_Nullable id obj,  NSString * _Nonnull key);

void ct_setIntegerForKey(NSInteger value,  NSString * _Nonnull key);

void ct_setBoolForKey(BOOL value,  NSString * _Nonnull key);

void ct_setFloatForKey(float value,  NSString * _Nonnull key);



__nullable id ct_objectForKey(NSString * _Nonnull key);

NSString * _Nullable ct_stringForKey(NSString * _Nonnull key);

NSInteger ct_integerForKey(NSString * _Nonnull key);

BOOL  ct_boolForKey(NSString * _Nonnull key);

float ct_floatForKey(NSString * _Nonnull key);

@end
