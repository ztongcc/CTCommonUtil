//
//  CTCommonUtil.m
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil.h"

@implementation CTCommonUtil

inline NSString * ct_bundleVersion()
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
}

inline NSString * ct_timeInterval()
{
    NSTimeInterval timeInterval = [[NSDate date] timeIntervalSince1970];
    NSString * interval = [NSString stringWithFormat:@"%lf", timeInterval];
    return [interval substringToIndex:10];
}

inline id ct_JSONObjectWithFilePath(NSString * filePath)
{
    if (filePath == nil || ![[NSFileManager defaultManager] isExecutableFileAtPath:filePath])
    {
        return nil;
    }
    NSData * data = [NSData dataWithContentsOfFile:filePath];
    if (data == nil)
    {
        NSLog(@"文件内容为Nil 或不存在");
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

inline UINib * vj_nibWithNibName(NSString * nibName)
{
    return vj_nibWithNibNameInBundle(nibName, nil);
}

inline UINib * vj_nibWithNibNameInBundle(NSString * nibName, NSBundle * bundle)
{
    return [UINib nibWithNibName:nibName bundle:bundle];
}

@end
