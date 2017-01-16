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

inline UINib * ct_nibWithNibName(NSString * nibName)
{
    return ct_nibWithNibNameInBundle(nibName, nil);
}

inline UINib * ct_nibWithNibNameInBundle(NSString * nibName, NSBundle * bundle)
{
    return [UINib nibWithNibName:nibName bundle:bundle];
}


// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //
// // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // // //


inline NSURL * ct_urlWithFilePath(NSString *filePath)
{
    return [NSURL fileURLWithPath:filePath];
}

inline NSURL * ct_urlPathForResource(NSString *fileName, NSString * extension)
{
    return [[NSBundle mainBundle] URLForResource:fileName withExtension:extension];
}

inline NSURL * ct_urlWithString(NSString *string)
{
    return [NSURL  URLWithString:string];
}

inline BOOL ct_isiPhone4()
{
    if ([[UIScreen mainScreen] bounds].size.height==480)
        return YES;
    return NO;
}

inline BOOL ct_isiPhone5()
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone &&
        [[UIScreen mainScreen] bounds].size.height==568)
    {
        return YES;
    }
    return NO;
}

inline BOOL ct_isiPhone6()
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone &&
        [[UIScreen mainScreen] bounds].size.width==375)
    {
        return YES;
    }
    return NO;
}

inline BOOL ct_isiPhone6p()
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone &&
        [[UIScreen mainScreen] bounds].size.width==414)
    {
        return YES;
    }
    return NO;
}

inline UIViewController * ct_instanceXIBController(Class vcClass)
{
    UIViewController * vc = [[vcClass  alloc] initWithNibName:NSStringFromClass([vcClass class]) bundle:nil];
    return vc;
}

inline CGFloat ct_ratioHeight(CGFloat orgHeight)
{
    CGFloat wid = [UIScreen mainScreen].bounds.size.width;
    CGFloat rate = wid/414.0f;
    return (orgHeight * rate);
}

inline CGFloat ct_ratioByRate(CGFloat orgWidth, CGFloat orgHeight)
{
    CGFloat wid = [UIScreen mainScreen].bounds.size.width - (414 - orgWidth);
    CGFloat rate = orgHeight /orgWidth;
    return (wid * rate);
}

@end
