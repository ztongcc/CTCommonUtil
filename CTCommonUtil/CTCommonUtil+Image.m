//
//  CTCommonUtil+Image.m
//  CTCommonUtilDemo
//
//  Created by Admin on 2016/12/30.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil+Image.h"
#import "CTCommonUtil+File.h"

@implementation CTCommonUtil (Image)


inline UIImage * ct_imageWithName(NSString * imageName)
{
    if (!imageName)
    {
        return nil;
    }
    NSString * imagePath = ct_pathResource(imageName, @"png");
    if (imagePath) {
        return [UIImage imageWithContentsOfFile:imagePath];
    }else {
        return [UIImage imageNamed:imageName];
    }
    
}

inline UIImage * ct_imageWithColor(UIColor * color)
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

inline UIImage * ct_imageWithColorInSize(UIColor * color, CGSize size)
{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,color.CGColor);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

inline UIImage * ct_imageResizableWithImageName(NSString  * imageName)
{
    if (imageName == nil) {
        return [UIImage new];
    }
    return ct_imageResizableWithImage(ct_imageWithName(imageName));
}

inline UIImage * ct_imageResizableWithImage(UIImage  * sourceImage)
{
    if (sourceImage) {
        return [sourceImage resizableImageWithCapInsets:UIEdgeInsetsMake(3, 3, 3, 3) resizingMode:UIImageResizingModeStretch];
    }else {
        return nil;
    }
}

inline UIImage * ct_imageResizableWithCapInsets(UIImage  * sourceImage, UIEdgeInsets edgeInsets)
{
    if (sourceImage) {
        return [sourceImage resizableImageWithCapInsets:edgeInsets resizingMode:UIImageResizingModeStretch];
    }else {
        return nil;
    }
}

UIImage * ct_imageResizableWithInsetsMode(NSString * sourceImageName, UIEdgeInsets edgeInsets, UIImageResizingMode mode)
{
    if (sourceImageName == nil) {
        return [UIImage new];
    }
    UIImage * image = ct_imageWithName(sourceImageName);
    if (ct_imageWithName(sourceImageName) == nil) {
        return [UIImage new];
    }
    return [image resizableImageWithCapInsets:edgeInsets resizingMode:mode];
}

inline UIImage * ct_imageRenderingOriginalMode(UIImage * sourceImage)
{
    return [sourceImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

inline UIImage * ct_getLaunchImage()
{
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString * viewOrientation = @"Portrait";
    NSString * launchImage =nil;
    NSArray * imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for(NSDictionary * dict in imagesDict)
    {
        CGSize imageSize =CGSizeFromString(dict[@"UILaunchImageSize"]);
        if(CGSizeEqualToSize(imageSize, viewSize) &&
           [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]])
        {
            launchImage = dict[@"UILaunchImageName"];
        }
    }
    return launchImage?[UIImage imageNamed:launchImage]:nil;
}

inline UIImage * ct_getLaunchImageLandscape()
{
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString * viewOrientation = @"Landscape";
    NSString * launchImage =nil;
    NSArray * imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for(NSDictionary * dict in imagesDict)
    {
        CGSize imageSize =CGSizeFromString(dict[@"UILaunchImageSize"]);
        if(CGSizeEqualToSize(imageSize, viewSize) &&
           [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]])
        {
            launchImage = dict[@"UILaunchImageName"];
        }
    }
    return launchImage?[UIImage imageNamed:launchImage]:nil;
}

@end
