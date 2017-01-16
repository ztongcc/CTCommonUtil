//
//  CTCommonUtil+JSON.m
//  CTCommonUtilDemo
//
//  Created by Admin on 2017/1/16.
//  Copyright © 2017年 Arvin. All rights reserved.
//

#import "CTCommonUtil+JSON.h"

@implementation CTCommonUtil (JSON)

inline BOOL ct_isValidJSONObj(id jsonObj)
{
    if (jsonObj && [NSJSONSerialization isValidJSONObject:jsonObj])
    {
        return YES;
    }
    return NO;
}

inline id ct_JSONObjectWithData(NSData * data)
{
    if (data == nil)
    {
        NSLog(@"data 为 Nil");
        return nil;
    }
    NSError * error = nil;
    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    if (error)
    {
        NSLog(@"error = %@", error); return nil;
    }
    if (jsonData && [NSJSONSerialization isValidJSONObject:jsonData])
    {
        return jsonData;
    }
    else
    {
        NSLog(@"数据不是有效的JSON格式");
        return nil;
    }
}

inline NSString * ct_JSONStringWithObj(id obj)
{
    if (obj == nil)
    {
        NSLog(@" object is cann't nil");
        return @"";
    }
    
    if (![NSJSONSerialization isValidJSONObject:obj])
    {
        NSLog(@" object is cann't JSON Object");
        return @"";
    }
    NSError * error;
    NSData * data = [NSJSONSerialization dataWithJSONObject:obj options:NSJSONWritingPrettyPrinted error:&error];
    if (error)
    {
        NSLog(@" object is cann't convert to data");
        return @"";
    }
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

inline NSString * ct_JSONStringBySortedKeyFromDictionary(NSDictionary * dict)
{
    if (!dict || [[dict allKeys] count] == 0 || ![dict isKindOfClass:[NSDictionary class]])
    {
        return @"";
    }
    NSArray * keyAry = [dict allKeys];
    NSArray * newkeyAry = [keyAry sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2 options:NSLiteralSearch];
    }];
    NSMutableString * result = [[NSMutableString alloc] initWithString:@"{"];
    for (int i = 0; i < [newkeyAry count]; i++)
    {
        [result appendFormat:@"\"%@\":\"%@\",",newkeyAry[i],dict[newkeyAry[i]]];
    }
    [result stringByReplacingCharactersInRange:NSMakeRange(result.length-1, 1) withString:@"}"];
    return result;
}

@end
