//
//  CTCommonUtil.h
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CTCommonUtil : NSObject

/**
 *  Return the time stamp
 *
 *  @return  time stamp
 */
NSString * ct_timeInterval();


/**
 *  Will develop under the path of file into the JSON Object
 *
 *  @param filePath 文件路径
 *
 *  @return json Object
 */
id ct_JSONObjectWithFilePath(NSString * filePath);

/**
 *  Init a nib by nibName
 *
 */
UINib * vj_nibWithNibName(NSString * nibName);

/**
 *  Init a nib in bundle by nibName
 *
 *  @param nibName nibname
 *  @param bundle  bundle
 *
 */
UINib * vj_nibWithNibNameInBundle(NSString * nibName, NSBundle * bundle);

@end
