//
//  CTCommonUtil+File.m
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil+File.h"

@implementation CTCommonUtil (File)

// 文件路径
NSString * ct_pathInDocument(NSString * fileName)
{
    NSString * paths = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    return [paths stringByAppendingPathComponent:fileName];
}

NSString * ct_pathInLibrary(NSString * fileName)
{
    NSString * paths = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
    return [paths stringByAppendingPathComponent:fileName];
}

NSString * ct_pathInCaches(NSString * fileName)
{
    NSString * paths = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    return [paths stringByAppendingPathComponent:fileName];
}

NSString * ct_pathResource(NSString *fileName, NSString * fileType)
{
    NSString * filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:fileType];
    return filePath;
}



@end
