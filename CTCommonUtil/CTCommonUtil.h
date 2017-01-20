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


NSString * ct_bundleVersion();

/**
 *  Return the time stamp
 *
 *  @return  time stamp
 */
NSString * ct_timeInterval();


/**
 *   Initializes and returns a newly created file NSURL referencing the local file at path
 */
NSURL * ct_urlWithFilePath(NSString *filePath);

/**
 *   Initializes and returns a newly created file NSURL referencing the resource
 */

NSURL * ct_urlPathForResource(NSString *fileName, NSString * extension);

/**
 *   Initializes and returns a newly created file NSURL referencing the string
 */
NSURL * ct_urlWithString(NSString *string);


NSString * ct_stringWithFromat(id format);
/**
 *  Judge the device is iPhone4
 *
 *  @return judge result
 */
BOOL ct_isiPhone4();

/**
 *  Judge the device is iPhone5
 *
 *  @return judge result
 */
BOOL ct_isiPhone5();

/**
 *  Judge the device is iPhone6
 *
 *  @return judge result
 */
BOOL ct_isiPhone6();

/**
 *  Judge the device is iPhone6p
 *
 *  @return judge result
 */
BOOL ct_isiPhone6p();

/**
 *  Init a nib by nibName
 *
 */
UINib * ct_nibWithNibName(NSString * nibName);

/**
 *  Init a nib in bundle by nibName
 *
 *  @param nibName nibname
 *  @param bundle  bundle
 *
 */
UINib * ct_nibWithNibNameInBundle(NSString * nibName, NSBundle * bundle);



/**
 *  init view controller from xib
 *
 */
UIViewController * ct_instanceXIBController(Class vcClass);


/**
 *  scale the height
 *  @param orgHeight  414 尺寸下的高度
 *
 */
CGFloat ct_ratioHeight(CGFloat orgHeight);


/**
 *  scale the height
 *  @param orgWidth   414 尺寸下的宽度
 *  @param orgHeight  414 尺寸下的高度
 *
 */
CGFloat ct_ratioByRate(CGFloat orgWidth, CGFloat orgHeight);


@end
